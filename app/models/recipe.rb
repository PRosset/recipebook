class Recipe < ApplicationRecord
  has_many :notes

  serialize :ingredients, Array
  serialize :instructions, Array
  serialize :health_labels, Array
  validates :instructions, presence: true
end
