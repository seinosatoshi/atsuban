class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :yells, dependent: :destroy
  has_many :yells_user, through: :yells, source: :user
  has_many :subscribes, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :bands, through: :comments
  attachment :image

  validates :name, presence: true

  def already_yelled_within_a_day?(band)
    result = yells.where(band_id: band.id)
    if result.size == 0
      false
    else
      yells.where(band_id: band.id).last.created_at.to_time > 1.day.ago
    end
  end
end
