class HandArmWeapon < ActiveRecord::Base
  has_attached_file :image, styles: { small: "100x100", med: "200x200", large: "400x400" }

  validates :japanese_name, presence: true
  validates :english_name, presence: true
  validates :description, presence: true

  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
  validates_with AttachmentSizeValidator, attributes: :image, less_than: 1.megabytes
end
