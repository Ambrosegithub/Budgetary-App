class Group < ApplicationRecord
    belongs_to :user, foreign_key: "user_id"
    has_many :expenses, dependent: :destroy
    validates :name, presence: true, length: { in: 4..250 }
  validates :icon, presence: true, length: { in: 4..250 }
  # icon must be a valid image.
  validates :icon,
  format: { with: /\.(gif|jpg|png|ico|jpeg)\Z/i, message: 'must be a URL for GIF, JPG, PNG, ICO or Jpeg image.' }

  # total_expenses returns the total amount of expenses in a group.
  def total_expenses
    expenses.sum(:amount)
  end
end
