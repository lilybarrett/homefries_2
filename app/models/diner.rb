class Diner < ActiveRecord::Base
  belongs_to :user

  has_many :reviews
  validates :name, presence: true
  validates :address, presence: true
  validates :user, presence: true 
end
