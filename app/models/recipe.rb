class Recipe < ActiveRecord::Base

  has_many :ingredientsds
  has_many :directions

  has_attached_file :image, styles: { medium: "400x400#" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end
