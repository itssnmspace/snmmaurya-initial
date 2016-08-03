ActiveAdmin.register BookContent do
  menu parent: "Master"

  permit_params :title, :description, :book_id

  index do
    column :id
    column :title
    column :description
    actions
  end

  form :html => { :enctype => "multipart/form-data" } do |f|
    f.semantic_errors *f.object.errors.keys
    f.inputs "Details" do
      f.input :book_id, as: :select, collection: Book.active.map{|book| [book.title, book.id]}
      f.input :title
      f.input :description, as: :html_editor
      f.input :status
      f.actions
    end
  end

  show do |book_content|
    attributes_table do
      row :id
      row :title
      row :description
      row :status
    end
  end

  filter :title
end