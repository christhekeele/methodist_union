class CreateDeaths < ActiveRecord::Migration
  def change
    create_table :deaths do |t|
      t.datetime :date
      t.string :address
      t.text :description

      t.timestamps null: false
    end
  end
end
