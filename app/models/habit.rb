class Habit < ActiveRecord::Base

  validates :title, presence: true
  validates :action, presence: true
  has_many :memberships
  has_many :users, through: :memberships
  has_many :comments, dependent: :destroy
end
