class CreatePerfomances < ActiveRecord::Migration
  def change
    create_table :perfomances do |t|
      t.datetime :date
      t.references :film
      t.references :hall

      t.timestamps
    end
    add_index :perfomances, :film_id
    add_index :perfomances, :hall_id
  end
end
