class CreateCinemas < ActiveRecord::Migration
  def change
    create_table :cinemas do |t|
      t.string :name
      t.string :address
      t.text :description

      t.timestamps
    end
  end
end
