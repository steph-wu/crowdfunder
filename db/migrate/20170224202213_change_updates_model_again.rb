class ChangeUpdatesModelAgain < ActiveRecord::Migration[5.0]

  def change
    add_column :updates, :title, :string
    remove_column :updates, :comments
  end

end
