class ImageAsset < ApplicationRecord
  has_attached_file :data, styles: { medium: "300x300>", thumb: "100x100>" },
  default_url: "/images/:style/missing.png",
  url: "/controllers/:style/:basename.:extension",
  path: ":rails_root/public/controllers/:style/:basename.:extension"
  validates_attachment_content_type :data, content_type: /\Aimage\/.*\Z/

  def self.image_asset_by_code image_asset_code
    self.find_by code: image_asset_code
  end
end