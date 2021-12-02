class AddColumnsToUser < ActiveRecord::Migration[6.1]
  def change
    add_references :articles, :article, foreign_key: {to_table: :users}
    add_references :comments, :comment, foreign_key: {to_table: :users}
  end
end
