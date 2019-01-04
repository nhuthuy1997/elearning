class CreateTraineeAnswer < ActiveRecord::Migration[5.2]
  def change
    create_table :trainee_answers do |t|
      t.references :trainee_question, foreign_key: true, index: true
      t.boolean :is_chose
      t.references :answer, foreign_key: true, index: true
    end
  end
end
