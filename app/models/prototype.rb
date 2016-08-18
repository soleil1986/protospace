class Prototype < ActiveRecord::Base
  has_many :images
  accepts_nested_attributes_for :images
  validates :title, presence: true
  validates :catchcopy, presence: true
  validates :concept, presence: true
end
