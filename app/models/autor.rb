#coding: UTF-8

class Autor < ActiveRecord::Base
	has_many :posts
	validates :nickname, presence: true
end
