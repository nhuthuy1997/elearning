class CreateTraineeQuestion < ActiveRecord::Migration[5.2]
  def change
    create_table :trainee_questions do |t|
      t.references :trainee_exam, foreign_key: true, index: true
      t.references :question, foreign_key: true, index: true
    end
  end
end
