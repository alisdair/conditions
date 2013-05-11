class Report < ActiveRecord::Base
  validates :source, presence: true
  validates :weather, presence: true, inclusion: { in: ["Good", "Fair", "Poor"] }
  validates :open, presence: true, inclusion: { in: ["Open", "Closed"] }
end
