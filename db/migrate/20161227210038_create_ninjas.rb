class CreateNinjas < ActiveRecord::Migration[5.0]
  def change
    create_table :ninjas do |t|
      t.string :name
      t.string :description
      t.text :associations, array: true, default: []
      t.timestamps
    end
  end
end
