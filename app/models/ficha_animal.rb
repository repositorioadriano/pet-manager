class FichaAnimal < ApplicationRecord
  belongs_to :animal
  has_one :vacina
end
