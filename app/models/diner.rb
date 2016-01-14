class Diner < ActiveRecord::Base
  has_many :reviews
  validates :name, presence: true
  validates :address, presence: true
end
