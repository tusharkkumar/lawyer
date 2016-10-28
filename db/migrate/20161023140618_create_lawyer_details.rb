class CreateLawyerDetails < ActiveRecord::Migration
  def change
    create_table :lawyer_details do |t|
    	t.string "name"
    	t.string "experiance"	
    	t.string "expense"	
    	t.string "case_successes"	
    	t.string "case_failure"	

      t.timestamps null: false
    end
  end
end
