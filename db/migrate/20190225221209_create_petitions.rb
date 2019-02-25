class CreatePetitions < ActiveRecord::Migration[5.2]
  def change
    create_table :petitions do |t|
      t.string :title
      t.text :description
      t.datetime :updated_at
    end
  end
end
