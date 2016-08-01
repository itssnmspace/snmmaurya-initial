class Image < ApplicationRecord
  belongs_to :imageable, polymorphic: true

  has_attached_file :data, styles: { medium: "300x300>", thumb: "100x100>" },
  default_url: "/images/:style/missing.png",
  url: "/controllers/:style/:basename.:extension",
  path: ":rails_root/public/controllers/:style/:basename.:extension"
  validates_attachment_content_type :data, content_type: /\Aimage\/.*\Z/
end