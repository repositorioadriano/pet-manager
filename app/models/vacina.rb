class Vacina < ApplicationRecord
  belongs_to :animal
  belongs_to :ficha_animal
end
