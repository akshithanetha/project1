class Admin < ApplicationRecord
  belongs_to :manageable, polymorphic: true

  validates :name, presence: true
  before_validation :print_a_message
  after_create :output_a_message

  def print_a_message
    puts "Validation will take place"
  end

  def output_a_message
    puts "Validation"
  end
end
