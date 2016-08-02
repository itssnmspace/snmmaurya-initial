class Blog < ApplicationRecord
  belongs_to :user
  has_many :comments


  searchable do
    text :title, :description

    text :comments do
      comments.map{|comment| comment.description}
    end

    integer :user_id
    boolean :featured
    boolean :status
    time :created_at
    time :updated_at
  end
end
