class AddCommentToGuests < ActiveRecord::Migration[6.0]
  def change
    add_column :guests, :comment, :text
  end
end
