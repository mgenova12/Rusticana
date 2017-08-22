class Special < ApplicationRecord
  has_attached_file :image
  validates_attachment :image,
                       content_type: { content_type: ["image/jpeg", "image/gif", "image/png"] }

  validates :name, presence: true
  validates :description, presence: true
  validates :image, presence: true

end
