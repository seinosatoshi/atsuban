class Band < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :yells
  has_many :posts, dependent: :destroy
  has_many :subscribes, dependent: :destroy
  has_many :comments
  attachment :image

  belongs_to :genres
  belongs_to :prefectures
end
