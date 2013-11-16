class Report < ActiveRecord::Base
  Statuses = ["Open", "Closed"]
  Weathers = ["Good", "Fair", "Poor"]
  Greens   = ["Summer", "Mixed", "Winter"]
  Reasons  = ["Frozen Ground", "Saturation", "Snow"]

  belongs_to :source
  validates :source_id, presence: true
  validates :weather, presence: true, inclusion: { in: Weathers }
  validates :status, presence: true, inclusion: { in: Statuses }
  validates :greens, presence: true, inclusion: { in: Greens }
  validates :reason, presence: true, inclusion: { in: Reasons }, if: -> { greens != "Summer" }

  before_validation do
    self.reason = nil if greens == "Summer"
  end
end
