class AddUserFieldToComments < ActiveRecord::Migration[6.1]
  def change
    add_references :comments, :user, foreign_key: {to_table: :users}
  end
end
