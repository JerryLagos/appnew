class ImagesController < ApplicationController
	@usuario = "Jerry lagos";
	def new
		
	end

	def index
		@allImg = Image.all
	end
	# Methodo para la cracion de imagenes
	def create
		# render plain: params[:image].inspect
		# @image = Image.new image_params
		@image = Image.new image_params
		@image.save
		redirect_to @image
	end

	# Methodo para la consulta de una imagen en concreto
	def show
		@imagshow = Image.find(params[:id])		
	end
	# Actualizar la info 
	def edit
	  @image = Image.find(params[:id])
	end

	# Update
	def update
	  @image = Image.find(params[:id])
	 
	  if @image.update(article_params)
	    redirect_to @article
	  else
	    render 'edit'
	  end
	end
	# Proceso para eliminar uno
	def destroy
		@image = Image.find(params[:id])
		@image.destroy
		redirect_to images_path
	end

	# Funcion observadora de parametros en el post del datos
	private 
		def image_params
			params.require(:image).permit(:description, :like_counter, :localitation)
		end



end

# >rails g controller welcome index