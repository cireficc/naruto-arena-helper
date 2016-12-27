class CreateSkills < ActiveRecord::Migration[5.0]
  def change
    create_table :skills do |t|
      t.belongs_to :ninja
      t.integer :position
      t.string :name
      t.string :description
      t.integer :cooldown
      t.integer :taijutsu_cost
      t.integer :bloodline_cost
      t.integer :ninjutsu_cost
      t.integer :genjutsu_cost
      t.integer :taijutsu_cost
      t.boolean :alternates
      t.text :classes, array: true, default: []
      t.timestamps
    end
  end
end
