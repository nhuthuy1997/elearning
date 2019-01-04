class CreateExamStructure < ActiveRecord::Migration[5.2]
  def change
    create_table :exam_structures do |t|
      t.string :name
      t.integer :status
      t.integer :start_point
      t.integer :end_point
      t.boolean :breakpoint
      t.references :user, foreign_key: true, index: true
    end
  end
end
