class AccountHistory < ApplicationRecord
  belongs_to :account

  validates :account_id, numericality: { only_integer: true }
end
