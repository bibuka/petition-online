class AddStateToPetitions < ActiveRecord::Migration[5.2]
  def change
    add_column :petitions, :state, :string
  end
end
