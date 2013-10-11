class CreateStories < ActiveRecord::Migration
  def change
    create_table :stories do |t|
      t.string :title
      t.text :description
      t.references :sprint, index: true

      t.timestamps
    end
  end
end
