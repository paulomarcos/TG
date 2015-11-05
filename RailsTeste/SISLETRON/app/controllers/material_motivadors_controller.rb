class MaterialMotivadorsController < ApplicationController
  def index
    @material_motivadors = MaterialMotivador.all
  end

  def show
    @material_motivador = MaterialMotivador.find(params[:id])
  end

  def new
    @material_motivador = MaterialMotivador.new
    @atividade_id = params[:atividade_id]
  end

  def create
    @material_motivador = MaterialMotivador.new(material_motivador_params)
    @atividade_id = params[:atividade_id]
    @material_motivador.atividade_id = @atividade_id
    a = Atividade.find(@atividade_id)
    if a != nil
      a.material_motivadors << @material_motivador
    end
    if @material_motivador.save
      redirect_to atividade_path(a)
    else
      render 'new'
    end
  end

  private
  def material_motivador_params
    params.require(:material_motivador).permit(:conteudo, :titulo, :atividade_id)
  end
end
