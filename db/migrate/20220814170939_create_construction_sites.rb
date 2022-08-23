class CreateConstructionSites < ActiveRecord::Migration[7.0]
  def change
    create_table :construction_sites do |t|
      t.text :name
      t.date :starting_date
      t.date :end_date
      t.integer :cost
      t.text :street
      t.text :number
      t.text :city
      t.text :state
      t.text :zip_code

      t.timestamps
    end
  end
end
