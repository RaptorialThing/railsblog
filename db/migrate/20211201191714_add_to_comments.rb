class AddToComments < ActiveRecord::Migration[6.1]
  def change
    add_reference :comments, :article, foreign_key: {to_table: :articles}  
  end
end
