class Paisplace < ApplicationRecord
  belongs_to :continente
  belongs_to :user
  has_many :igeograficos
end
