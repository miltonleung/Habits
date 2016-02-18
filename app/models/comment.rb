class Comment < ActiveRecord::Base
  validates :body, presence: true
  belongs_to :habit
  belongs_to :user
end
