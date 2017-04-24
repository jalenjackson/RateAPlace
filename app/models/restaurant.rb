class Restaurant < ApplicationRecord
  has_many :reviews
  belongs_to :category, optional: true


  has_attached_file :image, styles: { medium: "300x300>", thumb: "1000x1000>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

end