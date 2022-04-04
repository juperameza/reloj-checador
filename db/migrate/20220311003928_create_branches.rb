class CreateBranches < ActiveRecord::Migration[7.0]
  def change
    create_table :branches do |t|
      t.string :name
      t.string :city
      t.string :town
      t.integer :number
      t.boolean :status
      t.references :street_cp, null: false, foreign_key: true

      t.timestamps
    end
  end
end
