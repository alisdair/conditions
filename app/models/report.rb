class Report < ActiveRecord::Base
  belongs_to :source
  validates :source_id, presence: true
  validates :weather, presence: true, inclusion: { in: ["Good", "Fair", "Poor"] }
  validates :status, presence: true, inclusion: { in: ["Open", "Closed"] }
end
