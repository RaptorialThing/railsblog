class AddUserToComments < ActiveRecord::Migration[6.1]
  def change
    #add_reference :comments, :user, foreign_key: {to_table: :comments}
  end
end
