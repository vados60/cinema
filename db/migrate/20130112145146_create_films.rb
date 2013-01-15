class CreateFilms < ActiveRecord::Migration
  def change
    create_table :films do |t|
      t.string :name
      t.integer :budget
      t.integer :year
      t.string :country

      t.timestamps
    end
  end
end
