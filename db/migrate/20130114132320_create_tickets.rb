class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.references :perfomance
      t.integer :row
      t.integer :seat

      t.timestamps
    end
    add_index :tickets, :perfomance_id
  end
end
