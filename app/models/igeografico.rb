class Igeografico < ApplicationRecord
  belongs_to :paisplace
  belongs_to :user

  has_many :comments, dependent: :destroy
  validates :denominacion, presence: true
  
end
