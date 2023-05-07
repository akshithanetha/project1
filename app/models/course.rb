class Course < ApplicationRecord
  belongs_to :user
  has_many :users, through: :statuses
  has_and_belongs_to_many :instructors
  has_many :admins, as: :manageable
end
