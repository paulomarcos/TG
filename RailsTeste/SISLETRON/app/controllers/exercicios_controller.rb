class ExerciciosController < ApplicationController

  def index
    @exercicios = Exercicio.all
  end

  def new
    @exercicio = Exercicio.new()
    @material_motivador_id = params[:material_motivador_id]
  end

  def show
    @exercicio = Exercicio.find(params[:id])
    @material_motivador = MaterialMotivador.find_by_id(@exercicio.material_motivador_id)
  end

  def create
    @exercicio = Exercicio.new(exercicio_params)
    if exercicio_params[:enunciado].empty?
      redirect_to :back, alert: "Conteúdo vazio. Não foi possível salvar."
    else
      @material_motivador_id = params[:material_motivador_id]
      @exercicio.material_motivador_id = @material_motivador_id
      m = MaterialMotivador.find_by_id(@material_motivador_id)
      if m != nil
          m.exercicios << @exercicio
      end
      if @exercicio.save
        redirect_to material_motivador_path(m)
      else
        render new
      end
    end
  end

  private
  def exercicio_params
    params.require(:exercicio).permit(:enunciado, :numero, :material_motivador_id)
  end

end
