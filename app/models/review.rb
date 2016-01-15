class Review < ActiveRecord::Base
  belongs_to :diner
  belongs_to :user

  validates :rating, presence: true, numericality:
    { only_integer: true,
      greater_than_or_equal_to: 1,
      less_than_or_equal_to: 5,
      message: "must be between 1 and 5"
  }
  validates :body, presence: true
  validates :user_id, presence: true
  validates :diner_id, presence: true
end
