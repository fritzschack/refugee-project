class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :questions
  has_many :answers
  has_many :likes
  has_and_belongs_to_many(:users, join_table: "matches", foreign_key: "user_a_id", association_foreign_key: "user_b_id")
end
