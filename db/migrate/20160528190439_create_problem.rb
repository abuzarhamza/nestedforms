class CreateProblem < ActiveRecord::Migration
  def change
    create_table :problems do |t|
       t.string :title
       t.text :problem
       t.timestamp
    end
  end
end
