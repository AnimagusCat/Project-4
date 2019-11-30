class CuisinesOutlets < ActiveRecord::Migration[6.0]
  def change
    create_table :cuisines_outlets do |t|
      t.references :cuisine
      t.references :outlet
    end
  end
end