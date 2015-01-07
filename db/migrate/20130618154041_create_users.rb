class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email, null: false
      t.string :username, null: false
      t.boolean :is_admin, default: false
      t.string :password_digest
      t.text :image

      t.string :auth_token #for "Remember Me" function
      t.string :verification_token #for verifying new accounts
      t.boolean :verified, default: false
      t.string :password_reset_token #for resetting password
      t.datetime :password_reset_sent_at

      t.timestamps
    end
  end
end
