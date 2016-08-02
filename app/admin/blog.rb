ActiveAdmin.register Blog do
  menu parent: "Master"
  permit_params :content, :description, :user_id, :status

  index do
    column :id
    column :content
    column :description
    column :user do |blog|
      blog.user.try(:username)
    end  
    column :status
    actions
  end

  form :html => { :enctype => "multipart/form-data" } do |f|
    f.semantic_errors *f.object.errors.keys
    f.inputs "Details" do
      f.input :content
      f.input :description
      f.input :user_id, as: :select, collection: User.user_options
      f.input :status
      f.actions
    end
  end

  filter :cource
end