class CreateSprints < ActiveRecord::Migration
  def change
    create_table :sprints do |t|
      t.integer :number
      t.date :begin_on
      t.date :end_on
      t.timestamps
    end
  end
end
