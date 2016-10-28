class CreateUserAuthenticates < ActiveRecord::Migration
  def change
    create_table :user_authenticates do |t|
    	t.string "username"
    	t.string "password"

      t.timestamps null: false
    end
  end
end
