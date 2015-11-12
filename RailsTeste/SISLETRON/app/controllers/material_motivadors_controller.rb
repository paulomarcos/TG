class MaterialMotivadorsController < ApplicationController
  before_action :authorize
  before_action :require_professor, only: [:create, :new, :edit, :update]

  def index
    @material_motivadors = MaterialMotivador.all
  end

  def show
    @material_motivador = MaterialMotivador.find(params[:id])
    @atividade = @material_motivador.atividade
    @projeto = @atividade.projeto
    @exercicios = @material_motivador.exercicios
  end

  def new
    @material_motivador = MaterialMotivador.new
    @atividade_id = params[:atividade_id]
  end

  def edit
    @material_motivador = MaterialMotivador.find(params[:id])

    projeto_id = @material_motivador.atividade.projeto_id
    plano = Plano.where(projeto_id: projeto_id).pluck('professor_id')
    execucao = Execucao.where(projeto_id: projeto_id).pluck('professor_id')

    if plano.include?(current_professor.id) || execucao.include?(current_professor.id)
      foo = @material_motivador
    else
      redirect_to :back, alert: "Você não tem autorização para editar este material"
    end

  end

  def update
    @material_motivador = MaterialMotivador.find(params[:id])

    projeto_id = @material_motivador.atividade.projeto_id
    plano = Plano.where(projeto_id: projeto_id).pluck('professor_id')
    execucao = Execucao.where(projeto_id: projeto_id).pluck('professor_id')

    if plano.include?(current_professor.id) || execucao.include?(current_professor.id)
      if  @material_motivador.update_attributes(material_motivador_params)
        redirect_to material_motivador_path(@material_motivador)
      else
        render 'edit'
      end
    else
      redirect_to :back, alert: "Você não tem autorização para editar este material"
    end
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
