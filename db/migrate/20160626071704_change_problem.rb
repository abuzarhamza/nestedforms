class ChangeProblem < ActiveRecord::Migration
  def change
    rename_column :questions, :problem_id, :tutorial_id
  end
end
