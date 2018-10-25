# this class is linked to the dogs table
class Dog < ApplicationRecord
  belongs_to :city
  has_many :strolls
  has_many :dogsitters, through: :strolls
end
