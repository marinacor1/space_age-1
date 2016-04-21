class Package < ActiveRecord::Base
  belongs_to :destination
  validates_presence_of :title, :price, :description, :image
  validates :title, :description, :image, uniqueness: true


  def quantity(itinerary, id)
    itinerary.values_at(id.to_s).sum
  end

end
