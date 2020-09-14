class Comment < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :band, optional: true
  belongs_to :receiver_band, class_name: 'Band', foreign_key: 'receiver_id', inverse_of: :author

  default_scope -> { order(created_at: :desc) }
end
