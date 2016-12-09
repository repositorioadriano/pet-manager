class Animal < ApplicationRecord
  validates :nome, presence: true
  belongs_to :cliente
  has_one :ficha_animal, :dependent=> :destroy
  has_many :agendas, :dependent=> :destroy
end
