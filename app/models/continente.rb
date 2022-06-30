class Continente < ApplicationRecord
  has_many :paisplaces
  has_many :igeograficos, through: :paisplaces

  validates :denominacion, presence: true
end
