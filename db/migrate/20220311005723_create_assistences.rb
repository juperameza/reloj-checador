class CreateAssistences < ActiveRecord::Migration[7.0]
  def change
    create_table :assistences do |t|
      t.references :employee, null: false, foreign_key: true
      t.datetime :clock_in
      t.datetime :clock_out

      t.timestamps
    end
  end
end
