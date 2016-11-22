class Users < ActiveRecord::Migration[5.0]
  def change
	create_table :users do |t|
		t.string :nom
		t.string :prenom
		t.timestamp
	end
  end
end
