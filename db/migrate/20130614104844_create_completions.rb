class CreateCompletions < ActiveRecord::Migration
  def change
    create_table :completions do |t|
      t.integer :survey_id
      t.integer :user_id
    end 
  end
end
