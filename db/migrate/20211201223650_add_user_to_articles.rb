class AddUserToArticles < ActiveRecord::Migration[6.1]
  def change
    add_reference :articles, :user, foreign_key: {to_table: :articles}
  end
end
