class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :username
      t.boolean :is_admin
      t.string :password_digest
      t.string :image
      t.string :auth_token

      t.timestamps
    end
  end
end
