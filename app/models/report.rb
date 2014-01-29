class Report < ActiveRecord::Base
  Statuses = ["Open", "Closed"]
  Weathers = ["Good", "Fair", "Poor"]
  Greens   = ["Summer", "Mixed", "Winter"]
  Reasons  = ["Frozen Ground", "Saturation", "Snow"]

  belongs_to :source
  validates :source_id, presence: true
  validates :weather, presence: true, inclusion: { in: Weathers }
  validates :status, presence: true, inclusion: { in: Statuses }
  validates :greens, presence: true, inclusion: { in: Greens }, if: -> { status != "Closed" }
  validates :reason, presence: true, inclusion: { in: Reasons }, if: -> { greens.present? && greens != "Summer" }

  before_validation do
    self.greens = nil if status == "Closed"
    self.reason = nil if greens.nil? || greens == "Summer"
  end

  def description
    s = "The course is #{status.downcase}."
    w = "Weather is #{weather.downcase}."

    if status == "Closed"
      # Course closed with poor weather: probably the weather's fault.
      return [s, w].join(" ") if weather == "Poor"

      # Otherwise, we don't know why it's closed, so just keep it short.
      return s
    end

    g = greens_detail

    return [s, w, g].join(" ")
  end

  private

  def greens_detail
    case greens
    when "Summer"
      "Summer greens."
    when "Mixed"
      "Summer greens/some temporary greens (due to #{reason.downcase})."
    when "Winter"
      "Winter greens (due to #{reason.downcase})."
    end
  end
end
