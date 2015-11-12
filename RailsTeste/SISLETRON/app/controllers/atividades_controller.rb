class AtividadesController < ApplicationController
  before_action :authorize
  before_action :require_professor, only: [:create, :new, :update, :create]

  def index
    if current_professor?
      projetos_execucao_id = Execucao.where(professor_id: current_professor.id).pluck('projeto_id')
      @projetos_execucao = Projeto.find(projetos_execucao_id)
      projetos_plano_id = Plano.where(professor_id: current_professor.id).pluck('projeto_id')
      @projetos_plano = Projeto.find(projetos_plano_id)
    else # current_aluno?
      projetos_turma_id = ProjetoTurma.where(turma_id: current_aluno.turma_id).pluck('projeto_id')
      @projetos_aluno = Projeto.find(projetos_turma_id)
    end
  end


  def new
    @atividade = Atividade.new()
    @projeto_id = params[:projeto_id]
  end

  def show
    @atividade = Atividade.find(params[:id])
    @projeto = Projeto.find_by_id(@atividade.projeto_id)
    @materiais = @atividade.material_motivadors
  end

  def edit
    @atividade = Atividade.find(params[:id])

    projeto_id = @atividade.projeto_id
    plano = Plano.where(projeto_id: projeto_id).pluck('professor_id')
    execucao = Execucao.where(projeto_id: projeto_id).pluck('professor_id')

    if plano.include?(current_professor.id) || execucao.include?(current_professor.id)
      foo = @atividade
    else
      redirect_to :back, alert: "Você não tem autorização para editar esta atividade"
    end

  end

  def update
    @atividade = Atividade.find(params[:id])

    projeto_id = @atividade.projeto_id
    plano = Plano.where(projeto_id: projeto_id).pluck('professor_id')
    execucao = Execucao.where(projeto_id: projeto_id).pluck('professor_id')

    if plano.include?(current_professor.id) || execucao.include?(current_professor.id)
      if  @atividade.update_attributes(atividade_params)
        redirect_to atividade_path(@atividade)
      else
        render 'edit'
      end
    else
      redirect_to :back, alert: "Você não tem autorização para editar esta atividade"
    end
  end

  def create
    @atividade = Atividade.new(atividade_params)
    @projeto_id = params[:projeto_id]
    plano = Plano.where(projeto_id: @projeto_id).pluck('professor_id')
    execucao = Execucao.where(projeto_id: @projeto_id).pluck('professor_id')
    if plano.include?(current_professor.id) || execucao.include?(current_professor.id)
      @atividade.projeto_id = @projeto_id
      p = Projeto.find_by_id(@projeto_id)
      if p != nil
          p.atividades << @atividade
      end
      if @atividade.save
        redirect_to projeto_path(p)
      else
        render new
      end
    else
      redirect_to :back, alert: "Você não pode criar atividade para este projeto."
    end
  end

  private
  def atividade_params
    params.require(:atividade).permit(:titulo, :projeto_id)
  end

end
