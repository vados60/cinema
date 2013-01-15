class CreateHalls < ActiveRecord::Migration
  def change
    create_table :halls do |t|
      t.string :name
      t.integer :nor
      t.integer :nos
      t.references :cinema

      t.timestamps
    end
    add_index :halls, :cinema_id
  end
end
