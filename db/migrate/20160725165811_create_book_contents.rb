class CreateBookContents < ActiveRecord::Migration
  def change
    create_table :book_contents do |t|
      t.text :title
      t.text :description
      t.belongs_to :book
      t.boolean :status, default: true
      t.string :slug
      t.timestamps null: false
    end
  end
end