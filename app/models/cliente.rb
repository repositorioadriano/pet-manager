class Cliente < ApplicationRecord
  paginates_per 10
  has_many :animals, :dependent=> :destroy
  has_many :agendas
end
