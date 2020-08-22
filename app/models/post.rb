class Post < ApplicationRecord
	has_many :videos, dependent: :destroy
	has_many :audios, dependent: :destroy
	has_many :cover_images, dependent: :destroy

	belongs_to :bands
end
