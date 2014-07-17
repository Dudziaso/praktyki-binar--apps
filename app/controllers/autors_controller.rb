#coding: UTF-8

class AutorsController < ApplicationController
	
	def index
		@autors = Autor.all
	end

	def new
		@autor = Autor.new
	end

	def create
		@autor=Autor.new(autor_params)
		if @autor.save
			redirect_to root_url
		else
			render 'new'
		end
	end 
		
	private def autor_params
		params.require(:autor).permit(:nickname)
	end

	def destroy
		@autor=Autor.find(params[:id])
		@autor.destroy
		redirect_to root_url
	end

	def edit
		@autor = Autor.find(params[:id])
	end

	def update
		@autor=Autor.find(params[:id])
		if @autor.update(autor_params)
			redirect_to root_url
		else
			render :edit
		end
	end

end