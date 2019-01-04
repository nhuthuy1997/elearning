class CreateUser < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :email
      t.string :email2
      t.boolean :is_activated
      t.string :activated_token
      t.string :password
      t.string :avatar
      t.integer :phone
      t.datetime :birthday
    end
  end
end
