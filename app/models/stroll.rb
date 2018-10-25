# this class is linked to the strolls table
class Stroll < ApplicationRecord
  belongs_to :dog
  belongs_to :dogsitter
end
