class Flat < ApplicationRecord
  LOCALITY = ['Gombe', 'Barumbu', 'Limete', 'Kalamu', 'Lemba', 'Matete', 'Bumbu'].freeze
  HOUSE_TYPE = ['Maison/Villa', 'Appartement', 'Terrain']
  TYPE = ['VENDRE', 'LOUER']
  belongs_to :user
  has_many_attached :photos
end
