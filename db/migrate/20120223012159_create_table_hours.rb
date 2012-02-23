class CreateTableHours < ActiveRecord::Migration
  def up
    create_table :hours do |t|
      t.integer :open_hour
      t.integer :open_minute
      t.integer :closed_hour
      t.integer :closed_minute
      t.string  :day
      t.references :location

      t.timestamps
    end
  end

  def down
    drop_table :hours
  end
end
