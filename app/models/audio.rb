class Audio < ApplicationRecord
  mount_uploader :file, AudioFileUploader

  belongs_to :band

  # validates :name, presence: true
  validates :file, presence: true
end
