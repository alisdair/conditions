class Report < ActiveRecord::Base
  Statuses = ["Open", "Closed"]
  Weathers = ["Good", "Fair", "Poor"]

  belongs_to :source
  validates :source_id, presence: true
  validates :weather, presence: true, inclusion: { in: Weathers }
  validates :status, presence: true, inclusion: { in: Statuses }
end
