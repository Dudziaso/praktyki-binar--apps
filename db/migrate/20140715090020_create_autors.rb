class CreateAutors < ActiveRecord::Migration
  def change
    create_table :autors do |t|
    	t.string :nickname
    	

    end
  end
end
