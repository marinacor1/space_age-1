class Package < ActiveRecord::Base
  belongs_to :destination
  has_attached_file :image
  validates_attachment_content_type :image, content_type: ["image/jpg", "image/jpeg", "image/png"]
  validates :title, uniqueness: true
  validates_presence_of :title, :description, :price

  enum status:  %w(active inactive)

end
