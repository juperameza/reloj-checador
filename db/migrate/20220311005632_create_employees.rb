class CreateEmployees < ActiveRecord::Migration[7.0]
  def change
    create_table :employees do |t|
      t.string :name
      t.string :email
      t.string :position
      t.integer :private_number
      t.references :branch, null: false, foreign_key: true

      t.timestamps
    end
    add_index :employees, :email, unique: true
  end
end
