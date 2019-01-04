class CreateQuestion < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.text :content
      t.integer :status
      t.references :exam, foreign_key: true, index:true
      t.integer :style
    end
  end
end
