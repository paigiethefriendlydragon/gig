class CreateEmployersTable < ActiveRecord::Migration[5.2]
  def change
    create_table :employers_tables do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :address, null: false
      t.string :city, null: false
      t.string :state, null: false
      t.string :zip, null: false
      t.string :description, null: false

      t.timestamps
    end
  end
end
