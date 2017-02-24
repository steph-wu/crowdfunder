class RemoveFromUserProfile < ActiveRecord::Migration[5.0]
  def change
    remove_column :users, :image_uid
  end
end
