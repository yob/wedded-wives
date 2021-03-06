class Suggestion < ActiveRecord::Base

  has_many :gifts

  validates_presence_of :description, :count, :value
  validates_length_of :description, :maximum => 255
  validates_numericality_of :count, :greater_than_or_equal_to => 0, :less_than_or_equal_to => 50000
  validates_numericality_of :value, :greater_than_or_equal_to => 0, :less_than_or_equal_to => 50000

  def remaining
    num = self.count - self.gifts.select(&:persisted?).size
    num <= 0 ? 0 : num
  end

  def finished?
    remaining == 0
  end
end
