class Types_de_places < ActiveRecord::Migration[5.0]
  def change
	create_table :types_de_places do |t|
		t.string :nom
		t.timestamp
	end
  end
end
