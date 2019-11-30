class Outlets < ActiveRecord::Migration[6.0]
  def change
    create_table :outlets do |t|
      t.references :user
      t.string :name
      t.text :logo
      t.string :block
      t.string :road
      t.string :building
      t.string :unit
      t.string :postal_code
      t.string :dining_type
      t.string :halal_type
      t.text :menu
      t.string :website
      t.string :phone
      t.string :opening_hours
   end
  end
end