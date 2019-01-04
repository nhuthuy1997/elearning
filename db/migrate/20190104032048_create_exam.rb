class CreateExam < ActiveRecord::Migration[5.2]
  def change
    create_table :exams do |t|
      t.string :name
      t.integer :status
      t.string :description
      t.references :class, foreign_key: true
      t.integer :total_question
      t.integer :time_allow
      t.integer :max_attempts
      t.references :exam_structure, foreign_key: true, index: true
    end
  end
end
