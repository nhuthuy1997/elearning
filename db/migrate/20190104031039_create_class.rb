class CreateClass < ActiveRecord::Migration[5.2]
  def change
    create_table :classes do |t|
      t.string :name
      t.integer :status
      t.string :description
      t.references :user, foreign_key: true, index: true
      t.boolean :is_openning
    end
  end
end
