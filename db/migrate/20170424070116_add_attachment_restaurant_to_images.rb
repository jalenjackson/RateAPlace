class AddAttachmentRestaurantToImages < ActiveRecord::Migration
  def self.up
    change_table :images do |t|
      t.attachment :restaurant
    end
  end

  def self.down
    remove_attachment :images, :restaurant
  end
end
