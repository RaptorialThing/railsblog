class AddColumnsToUser < ActiveRecord::Migration[6.1]
  def change
    add_reference :articles, :article, foreign_key: {to_table: :users}
    add_reference :comments, :comment, foreign_key: {to_table: :users}
  end
end
