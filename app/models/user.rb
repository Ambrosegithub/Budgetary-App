class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable # , :confirmable
  has_many :groups, foreign_key: :user_id
  has_many :expenses, foreign_key: :user_id
  validates :name, presence: true, length: { in: 4..250 }
  validates :email, presence: true, length: { in: 4..250 }
  validates :password, presence: true, length: { in: 4..250 }
end
