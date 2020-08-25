class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :yells
  has_many :subscribes, dependent: :destroy
  has_many :comments
  has_many :bands, through: :comments

  validates :name, presence: true
  validates :name_kana, presence: true, format: { with: /\A[ァ-ヶー－]+\z/ }
end
