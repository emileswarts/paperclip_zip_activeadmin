ActiveAdmin.register Product do

  form do |f|
    f.inputs "Details" do
      f.input :title
    end
    f.inputs "Details" do
      f.has_many :product_images do |image|
        image.input :zip, :as => :file
      end
    end
    f.actions
  end
end

