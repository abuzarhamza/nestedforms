class ChangeTablenameNew < ActiveRecord::Migration
  def change
  	rename_table :tutorial,  :tutorials
  end
end
