class CreateVegetables < ActiveRecord::Migration
  def change
    create_table :vegetables do |t|
      t.string   :name, null: false
      t.string   :price_min, null: false
      t.string   :price_max, null: false
      t.string   :unit, null: false
      t.date     :date, null: false  

      t.index :name
    end
  end
end
