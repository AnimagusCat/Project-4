class Cuisines < ActiveRecord::Migration[6.0]
  def change
    create_table :cuisines do |t|
      t.string :type
    end
  end
end