class Group < ApplicationRecord
  belongs_to :user, foreign_key: 'user_id'
  has_many :expenses, dependent: :destroy
  validates :name, presence: true
  validates :icon, presence: true
  # total_expenses returns the total amount of expenses in a group.
  def total_expenses
    expenses.sum(:amount)
  end
end
