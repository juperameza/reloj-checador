class CreateBranches < ActiveRecord::Migration[7.0]
  def change
    create_table :branches do |t|
      t.string :name
      t.references :street_cp, null: false, foreign_key: true
      t.string :city
      t.string :town
      t.integer :number

      t.timestamps
    end
  end
end
