class UsuariosController < ApplicationController
  def new
  end

  # Proceso para crear un usuario
  def create
  	@usuario = Usuario.new usuario_params

    if @usuario.save
        UserMailer.with(user: @usuario).welcome_email.deliver

        # format.html { redirect_to(@usuario, notice: 'User was successfully created.') }
        # format.json { render json: @usuario, status: :created, location: @usuario } 
        redirect_to @usuario
      
    end

  end

  # Proceso para ver un usuario
  def show
    @usuario = Usuario.find(params[:id])
  end


  # Proceso para conocer todos los usuarios del sistma
  def index
	 @allUsuarios = Usuario.all
  end

  # Proceso para consultar un usuario del sistema
  def edit
    @usuario = Usuario.find(params[:id])
  end

  # Proceso para poder actualizar el usuario seleccionado en el sistema
  def update
    @usuario = Usuario.find(params[:id])
    if @usuario.update(usuario_params)
      redirect_to @usuario
    else
      render 'edit'
    end
  end
  
  #  Proceso para eliminar los registros
  def destroy
    @usuario = Usuario.find(params[:id])
    @usuario.destroy
   
    redirect_to usuarios_path
  end

  private 
  	def usuario_params
  		params.require(:usuario).permit(:nombre, :apellido, :correo)
  	end
end
