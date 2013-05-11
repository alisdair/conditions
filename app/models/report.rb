class Report < ActiveRecord::Base
  validates :source, presence: true
  validates :weather, presence: true, inclusion: { in: ["Good", "Fair", "Poor"] }
  validates :open, inclusion: { in: [true, false], message: "must be specified" }
end
