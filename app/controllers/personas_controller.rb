class PersonasController < ApplicationController
  def users
  	@nombre = params[:nombre_usuario]
  	@apellido = params[:apellido_usuario]
  	@cedula = params[:cedula_usuario]


  	@creado = Persona.create({nombre: @nombre, apellido: @apellido, cedula: @cedula})
  	@usuarios = Persona.all

  	# change to my students 
  end
end
