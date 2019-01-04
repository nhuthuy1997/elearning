class CreateClassTrainees < ActiveRecord::Migration[5.2]
  def change
    create_table :class_trainees do |t|
      t.references :class, foreign_key: true, index: true
      t.references :user, foreign_key: true, index: true
    end
  end
end
