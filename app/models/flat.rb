class Flat < ApplicationRecord
  LOCALITY = ['Gombe', 'Barumbu', 'Limete', 'Kalamu', 'Lemba', 'Matete', 'Bumbu'].freeze
  HOUSE_TYPE = ['Maison/Villa', 'Appartement', 'Terrain']
  TYPE = ['VENDRE', 'LOUER']
  belongs_to :user
  has_many_attached :photos
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  #has_and_belongs_to_many :equipments
  has_many :flat_equipments
  has_many :equipments, through: :flat_equipments
end
