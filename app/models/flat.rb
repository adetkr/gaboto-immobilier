class Flat < ApplicationRecord
  LOCALITY = ['Gombe', 'Barumbu', 'Limete', 'Kalamu', 'Lemba', 'Matete', 'Bumbu'].freeze
  HOUSE_TYPE = ['Maison/Villa', 'Appartement', 'Terrain']
  TYPE = ['A VENDRE', 'A LOUER']
  belongs_to :user
  has_many_attached :photos
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  #has_and_belongs_to_many :equipments
  has_many :flat_equipments
  has_many :equipments, through: :flat_equipments

  validates :description, :operation_type, :house_type, :address, :rooms, :pieces, :surface, :price, presence: true

  after_create :send_published_email
  private

  def send_published_email
    FlatMailer.with(flat: self).published.deliver_now
  end
end
