class Course < ApplicationRecord
  belongs_to :user
  has_many :subscriptions, dependent: :destroy
  has_many :users, through: :subscriptions
  has_many :lectures, dependent: :destroy
end
