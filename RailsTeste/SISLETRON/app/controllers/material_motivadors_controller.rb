class MaterialMotivadorsController < ApplicationController
  before_action :authorize
  before_action :require_professor, only: [:create, :new]

  def index
    @material_motivadors = MaterialMotivador.all
  end

  def show
    @material_motivador = MaterialMotivador.find(params[:id])
    @exercicios = @material_motivador.exercicios
  end

  def new
    @material_motivador = MaterialMotivador.new
    @atividade_id = params[:atividade_id]
  end

  def create
    @material_motivador = MaterialMotivador.new(material_motivador_params)
    @atividade_id = params[:atividade_id]
    a = Atividade.find(@atividade_id)
    projeto_id = a.projeto_id
    Projeto.find(projeto_id)
    plano = Plano.where(projeto_id: projeto_id).pluck('professor_id')
    execucao = Execucao.where(projeto_id: projeto_id).pluck('professor_id')

    if plano.include?(current_professor.id) || execucao.include?(current_professor.id)

      @material_motivador.atividade_id = @atividade_id

      if a != nil
        a.material_motivadors << @material_motivador
      end
      if @material_motivador.save
        redirect_to atividade_path(a)
      else
        render 'new'
      end
    else
      redirect_to :back, alert: "Você não pode criar materiais para esta atividade."
    end
  end

  private
  def material_motivador_params
    params.require(:material_motivador).permit(:conteudo, :titulo, :atividade_id)
  end
end
