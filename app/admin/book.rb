ActiveAdmin.register Book do
  menu parent: "Master"

  permit_params :title, :description, images_attributes: [:id, :data, :_destroy]

  index do
    column :id
    column :title
    column :description
    column "Images" do |book|
      image = book.images.last
      image_tag(image.data.url(:thumb)) if image.present?
    end
    actions
  end

  form :html => { :enctype => "multipart/form-data" } do |f|
    f.semantic_errors *f.object.errors.keys
    f.inputs "Details" do
      f.input :title
      f.input :description
      f.has_many :images, allow_destroy: true do |ff|
        ff.input :data, as: :file, label: "Image", hint: image_tag(ff.object.data.url(:thumb))
      end
      f.actions
    end
  end

  show do |book|
    attributes_table do
      row :id
      row :title
      row :description
      row "Image" do |book|
        image_tag(book.images.last.data.url(:original)) if book.images.present?
      end  
    end
  end

  filter :title
end