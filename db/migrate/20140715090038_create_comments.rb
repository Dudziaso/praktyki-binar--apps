class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
    	t.string :comment_content
    	t.belongs_to :post

    end
  end
end
