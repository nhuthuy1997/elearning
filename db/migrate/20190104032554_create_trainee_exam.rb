class CreateTraineeExam < ActiveRecord::Migration[5.2]
  def change
    create_table :trainee_exams do |t|
      t.integer :status
      t.references :exam, foreign_key: true, index: true
      t.references :user, foreign_key: true, index: true
      t.integer :result
      t.integer :point
      t.integer :time_finish
    end
  end
end
