class Habit < ActiveRecord::Base
  has_many :memberships
  has_many :users, through: :memberships
  validates :title, presence: true
  validates :action, presence: true, format: {with: (start|stop)}
end
