class CreatePersonaldetails < ActiveRecord::Migration
  def change
    create_table :personaldetails do |t|

      t.timestamps null: false
    end
  end
end
