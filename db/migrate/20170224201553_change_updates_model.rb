class ChangeUpdatesModel < ActiveRecord::Migration[5.0]

  def change
    remove_column :updates, :date
  end

end
