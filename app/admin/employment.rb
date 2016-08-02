ActiveAdmin.register Employment do
  menu parent: "Master"
  permit_params :name, :location, :about, :started_at, :end_at, :user_id, :status

  index do
    column :id
    column :name
    column :location
    column :about
    column :started_at
    column :end_at
    column :user
    column :status
    actions
  end

  form :html => { :enctype => "multipart/form-data" } do |f|
    f.semantic_errors *f.object.errors.keys
    f.inputs "Details" do
      f.input :name
      f.input :location
      f.input :about
      f.input :user_id, as: :select, collection: User.user_options
      f.input :started_at, as: :date_time_picker
      f.input :end_at, as: :date_time_picker
      f.input :status
      f.actions
    end
  end

  show do |portfolio|
    attributes_table do
      row :name
      row :location
      row :about
      row :user do |portfolio|
        portfolio.user.username
      end  
      row :started_at
      row :end_at
      row :status
    end
  end

  filter :name
end