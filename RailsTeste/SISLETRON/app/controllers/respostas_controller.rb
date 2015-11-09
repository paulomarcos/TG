class RespostasController < ApplicationController
  before_action :authorize

  def index
    @respostas = Resposta.all
  end

  def new
    @resposta = Resposta.new()
    @exercicio_id = params[:exercicio_id]
    @exercicio = Exercicio.find(@exercicio_id)
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
        redirect_to :back, alert: "Você não pode criar respostas para este material."
      end
    end
  end

  private
  def resposta_params
    params.require(:resposta).permit(:exercicio_id, :aluno_id, :conteudo)
  end

end
