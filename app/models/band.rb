class Band < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :yells, dependent: :destroy
  has_many :yells_user, through: :yells, source: :user
  has_many :posts, dependent: :destroy
  has_many :subscribes, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :users, through: :comments
  has_many :receive_bands, through: :comments, class_name: 'Band', foreign_key: 'receiver_id'
  has_many :audios, dependent: :destroy

  attachment :image

  # belongs_to :genre, optional: true
  # belongs_to :prefecture, optional: true

  # accepts_nested_attributes_for :audios, allow_destroy: true
  # accepts_nested_attributes_for :posts, allow_destroy: true

  validates :name, presence: true
  # validates :name_kana, presence: true, format: { with: /\A[ァ-ヶー－]+\z/ }

  acts_as_paranoid

  def favorited_by?(user)
    subscribes.where(user_id: user.id).exists?
  end

  def yelled_at_by?(user)
    s.where(user_id: user.id).exists?
  end
end