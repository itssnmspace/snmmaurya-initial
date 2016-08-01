class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.string :description
      t.boolean :status, default: true
      t.string :slug
      t.timestamps null: false
    end
  end
end