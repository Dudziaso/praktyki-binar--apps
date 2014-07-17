#coding: UTF-8

class Post < ActiveRecord::Base
	belongs_to :autor
	has_many :comments

end
