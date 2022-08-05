class Post < ApplicationRecord
  belongs_to :creator, class_name: 'User', inverse_of: :posts

  validates :body, presence: true, length: { maximum: 5000 }
  validates :creator, presence: true
end
