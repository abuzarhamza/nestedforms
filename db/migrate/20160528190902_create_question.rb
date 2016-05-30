class CreateQuestion < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.integer :problem_id
      t.text :question
      t.text :answer
      t.text :hint
      t.timestamp :true
    end
  end
end
