class Instructor < ApplicationRecord
  include Validatable
  has_and_belongs_to_many :courses
  after_initialize { |a| puts "Initialized" }
  after_find { |i| puts "Found" }
  after_touch { |x| puts "Touched" }
  before_create :before_create
  after_create :after_create
  before_save :before_save
  after_save :after_save
  after_commit :after_commit

  private

  def before_create
    puts "Instructor will be created"
  end
  def after_create
    puts "Instructor created"
  end
  def before_save
    puts "Instructor will be saved"
  end
  def after_save
    puts "Instructor saved"
  end
  def after_commit
    puts "Instructor committed"
  end
end
