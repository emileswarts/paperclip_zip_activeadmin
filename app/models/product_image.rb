class ProductImage < ActiveRecord::Base

  attr_accessible :image, :product_id, :zip

  belongs_to :product

  has_attached_file :zip, :url => "/tmp/:id/:basename.:extension"
  after_post_process :extract
  # validates_attachment_content_type :zip, :content_type => ['zip']

  def extract
    zip_file_path = "#{Rails.root}/public/tmp/#{self.id}/#{self.zip_file_name}"
     Zip::ZipFile.open(zip_file_path) do |zipfile|
     #   zipfile.each do |file|
     #     export_path = "#{Rails.root}/assets/sequnces/"
     #     image_path = File.join(export_path, zip_file_name)
     #     100.times do
     #       p image_path
     #     end
     #       FileUtils.mkdir_p(File.dirname(image_path))
     #       unless File.exist?(image_path)
     #         zip_file.extract(image, image_path)
     #         # ..stuff that it does..
     #       end
     #   end
     end
  end

  def myrand
    Time.now.to_i
  end
end


#
# <ProductImage id: 1, image: nil, product_id: 1, created_at: "2013-06-17 19:47:20", updated_at: "2013-06-17 20:18:47", zip_file_name: "vimzip.zip", zip_content_type: "ap plication/x-zip-compressed", zip_file_size: 196, zip_updated_at: "2013-06-17 20:19:37">
#
#
