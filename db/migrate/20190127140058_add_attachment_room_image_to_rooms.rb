class AddAttachmentRoomImageToRooms < ActiveRecord::Migration[5.2]
  def self.up
    change_table :rooms do |t|
      t.attachment :room_image
    end
  end

  def self.down
    remove_attachment :rooms, :room_image
  end
end
