class Agenda < ApplicationRecord
  paginates_per 10
  belongs_to :animal
  belongs_to :servico
  has_many :contas_recebers
end
