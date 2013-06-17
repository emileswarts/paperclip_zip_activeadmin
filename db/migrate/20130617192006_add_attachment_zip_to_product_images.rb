class AddAttachmentZipToProductImages < ActiveRecord::Migration
  def self.up
    change_table :product_images do |t|
      t.attachment :zip
    end
  end

  def self.down
    drop_attached_file :product_images, :zip
  end
end
