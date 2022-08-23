class CreateBrands < ActiveRecord::Migration[7.0]
  def change
    create_table :brands do |t|
      t.text :name

      t.timestamps
    end
  end
end
