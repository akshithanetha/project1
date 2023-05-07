module Validatable
  extend ActiveSupport::Concern

  included { validates :name, presence: true }
end
