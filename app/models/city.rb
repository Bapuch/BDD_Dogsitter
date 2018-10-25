# this class is linked to the cities table
class City < ApplicationRecord
  has_many :dogs
  has_many :dogsitters
end
