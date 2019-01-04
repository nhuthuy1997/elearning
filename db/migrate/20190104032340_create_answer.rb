class CreateAnswer < ActiveRecord::Migration[5.2]
  def change
    create_table :answers do |t|
      t.text :content
      t.integer :status
      t.references :class, foreign_key: true, index: true
      t.boolean :all_above
      t.boolean :right_answer
    end
  end
end
