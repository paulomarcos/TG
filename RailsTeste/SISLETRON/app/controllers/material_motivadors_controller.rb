class MaterialMotivadorsController < ApplicationController
  def index
    @material_motivadors = MaterialMotivador.all
  end

  def show
    @material_motivador = MaterialMotivador.find(params[:id])
  end

  def new
    @material_motivador = MaterialMotivador.new
  end

  def create
    @material_motivador = MaterialMotivador.new(material_motivador_params)
    if @material_motivador.save
      redirect_to '/material_motivadors'
    else
      render 'new'
    end
  end

  private
  def material_motivador_params
    params.require(:material_motivador).permit(:conteudo, :titulo)
  end
end
