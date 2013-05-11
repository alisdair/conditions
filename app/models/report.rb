class Report < ActiveRecord::Base
  validates :source, presence: true
  validates :weather, presence: true
  validates :open, inclusion: { in: [true, false], message: "must be specified" }
end
