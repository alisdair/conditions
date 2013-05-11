class Source < ActiveRecord::Base
  validates :name, presence: true
  validates :key, presence: true, length: { is: 32 }, uniqueness: true

  before_validation :generate_key, on: :create

  def self.keyed(id)
    find_by_key!(id)
  end

  def to_param
    key
  end

  private

  def generate_key
    self.key ||= SecureRandom.hex
  end
end
