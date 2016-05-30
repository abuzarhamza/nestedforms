class ChangeTablename < ActiveRecord::Migration
  def change
    rename_table :problems, :tutorial
  end
end
