#coding: UTF-8

class Comment < ActiveRecord::Base
	belongs_to :post

end
