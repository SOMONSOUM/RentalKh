# == Schema Information
#
# Table name: rooms
#
#  id                      :bigint(8)        not null, primary key
#  full_address            :string
#  room_condition          :string
#  room_description        :text
#  room_image              :string
#  room_image_content_type :string
#  room_image_file_name    :string
#  room_image_file_size    :bigint(8)
#  room_image_updated_at   :datetime
#  room_price              :decimal(, )
#  room_size               :float
#  created_at              :datetime         not null
#  updated_at              :datetime         not null
#

class Room < ApplicationRecord
  validates :full_address, :room_size, :room_price, :room_condition, presence: true

  has_attached_file :room_image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "images/users/boy.png"
  validates_attachment_content_type :room_image, content_type: /\Aimage\/.*\z/
end
