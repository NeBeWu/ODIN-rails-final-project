class User < ApplicationRecord
  has_many :posts, foreign_key: :creator_id, inverse_of: :creator

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
