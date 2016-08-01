class CreateProblems < ActiveRecord::Migration
  def change
    create_table :problems do |t|
    	t.text :title
    	t.string :description
      t.belongs_to :topic, index: true
      t.boolean :featured, default: true
      t.boolean :correct, default: true
      t.integer :position
      t.boolean :status, default: true
      t.string :slug
      t.timestamps
    end
  end
end