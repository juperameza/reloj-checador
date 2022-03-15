class CreateStreetCps < ActiveRecord::Migration[7.0]
  def change
    create_table :street_cps do |t|
      t.string :street_name
      t.integer :cp

      t.timestamps
    end
  end
end
