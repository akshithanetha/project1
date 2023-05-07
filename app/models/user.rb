class User < ApplicationRecord
  include Validatable

  has_many :courses, dependent: :destroy
  has_one :account
  has_one :account_history, through: :account
  has_many :admins, as: :manageable
  validates :name,
            presence: true,
            format: {
              with: /\A[a-zA-Z]+\z/
            },
            length: {
              minimum: 5,
              maximum: 12
            },
            uniqueness: true,
            on: :create
  validates :emailId, presence: true
  validates_associated :courses

  scope :categories, -> { where(categories: "Language") }
end
