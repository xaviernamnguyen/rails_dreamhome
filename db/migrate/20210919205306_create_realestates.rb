class CreateRealestates < ActiveRecord::Migration[6.1]
  def change
    create_table :realestates do |t|
      t.string :title
      t.string :address
      t.string :price
      t.string :desc
      t.string :map
      t.integer :toilet
      t.integer :room
      t.boolean :feat_air_conditioner
      t.boolean :feat_broadband
      t.boolean :feat_hot_water
      t.boolean :feat_garage
      t.boolean :feat_heater

      t.timestamps
    end
  end
end
