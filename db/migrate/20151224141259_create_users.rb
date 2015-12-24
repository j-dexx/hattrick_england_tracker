class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :auth_provider, null: false
      t.string :auth_uid, null: false
      t.string :email, null: false, index: { unique: true }
      t.string :hattrick_username, null: false
      t.string :oauth_token, null: false
      t.string :oauth_secret, null: false

      t.timestamps
    end
    add_index :users, [:auth_provider, :auth_uid], unique: true
  end
end
