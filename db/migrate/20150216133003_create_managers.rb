class CreateManagers < ActiveRecord::Migration
  def change
    create_table :managers do |t|
		t.string :fname
    	t.string :lname
    	t.string :email
    	t.integer :emp_id
    	t.integer :manager_id
     	t.timestamps
    end
  end
end
