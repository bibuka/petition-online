class AddUserIdToArticles < ActiveRecord::Migration[5.2]
  def change
    add_column :petitions, :user_id, :integer
  end
end
