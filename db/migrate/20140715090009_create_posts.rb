class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
    	t.string :post_content
    	t.belongs_to :autor
    end
  end
end
