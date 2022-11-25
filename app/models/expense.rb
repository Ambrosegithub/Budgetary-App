class Expense < ApplicationRecord
  belongs_to :user, foreign_key: 'user_id'
  has_and_belongs_to_many :groups
  validates :name, presence: true, length: { in: 4..250 }
  validates :amount, presence: true, numericality: { greater_than_or_equal_to: 0 }
end
