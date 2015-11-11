class RespostasController < ApplicationController
  before_action :authorize
  before_action :require_aluno, only: [:create, :new, :update, :edit]

  def index
    @respostas = Resposta.all
  end

  def new
    @resposta = Resposta.new()
    @exercicio_id = params[:exercicio_id]
    @exercicio = Exercicio.find(@exercicio_id)
  end

  def edit
    @resposta = Resposta.find(params[:id])
    aluno = Aluno.find(@resposta.aluno_id)
    own_aluno?(aluno)
    @exercicio = Exercicio.find(@resposta.exercicio_id)
  end

  def update
    @resposta = Resposta.find(params[:id])
    if @resposta.aluno_id != current_aluno.id
      redirect_to :back, alert: "Você não tem autorização para editar esta resposta"
    else
      if  @resposta.update_attributes(resposta_params)
        redirect_to exercicio_path(@resposta.exercicio_id)
      else
        render 'edit'
      end
    end
  end

  def create
    @resposta = Resposta.new(resposta_params)
    if resposta_params[:conteudo].empty?
      redirect_to :back, alert: "Conteúdo vazio. Não foi possível salvar."
    else
      exercicio = Exercicio.find(params[:exercicio_id])
      projeto_id = exercicio.material_motivador.atividade.projeto_id
      projetos_turmas = ProjetoTurma.where(turma_id: current_aluno.turma_id).pluck('projeto_id')

      if projetos_turmas.include?(projeto_id)
        @resposta.exercicio_id = @exercicio_id
        if exercicio != nil
            exercicio.respostas << @resposta
            current_aluno.respostas << @resposta
        end
        if @resposta.save
          redirect_to exercicio_path(exercicio)
        else
          render new
        end
      else
        redirect_to :back, alert: "Você não pode criar respostas para esta material."
      end
    end
  end

  private
  def resposta_params
    params.require(:resposta).permit(:exercicio_id, :aluno_id, :conteudo)
  end

end
