class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :username
      t.string :email
      t.string :first_name
      t.string :second_name
      t.string :city
      t.string :passport_number
      t.integer:phone_number
      t.date   :date_of_birth
      t.timestamps
    end
  end
end
