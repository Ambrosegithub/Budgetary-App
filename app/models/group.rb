class Group < ApplicationRecord
    belongs_to :user, foreign_key: "user_id"
    has_and_belongs_to_many :expenses
    validates :name, presence: true, length: { in: 4..250 }
  validates :icon, presence: true, length: { in: 4..250 }
  # icon must be a valid image.
  validates :icon,
  format: { with: /\.(gif|jpg|png|ico|jpeg)\Z/i, message: 'must be a URL for GIF, JPG, PNG, ICO or Jpeg image.' }
end
