class ExerciciosController < ApplicationController
  before_action :authorize
  before_action :require_professor, only: [:create, :new, :edit, :update]

  def index
    @exercicios = Exercicio.all
  end

  def new
    @exercicio = Exercicio.new()
    @material_motivador_id = params[:material_motivador_id]
  end

  def show
    @exercicio = Exercicio.find(params[:id])
    @material_motivador = @exercicio.material_motivador
    @atividade = @material_motivador.atividade
    @projeto = @atividade.projeto

    if current_aluno?
      @resposta = Resposta.where(exercicio_id: @exercicio.id).where(aluno_id: current_aluno.id).first
    else
      @respostas = Resposta.where(exercicio_id: @exercicio.id)
    end
  end

  def edit
    @exercicio = Exercicio.find(params[:id])

    projeto_id = @exercicio.material_motivador.atividade.projeto_id
    plano = Plano.where(projeto_id: projeto_id).pluck('professor_id')
    execucao = Execucao.where(projeto_id: projeto_id).pluck('professor_id')

    if plano.include?(current_professor.id) || execucao.include?(current_professor.id)
      foo = @exercicio
    else
      redirect_to :back, alert: "Você não tem autorização para editar este exercício"
    end

  end

  def update
    @exercicio = Exercicio.find(params[:id])

    projeto_id = @exercicio.material_motivador.atividade.projeto_id
    plano = Plano.where(projeto_id: projeto_id).pluck('professor_id')
    execucao = Execucao.where(projeto_id: projeto_id).pluck('professor_id')

    if plano.include?(current_professor.id) || execucao.include?(current_professor.id)
      if  @exercicio.update_attributes(exercicio_params)
        redirect_to exercicio_path(@exercicio)
      else
        render 'edit'
      end
    else
      redirect_to :back, alert: "Você não tem autorização para editar este exercício"
    end
  end

  def create
    @exercicio = Exercicio.new(exercicio_params)
    if exercicio_params[:enunciado].empty?
      redirect_to :back, alert: "Conteúdo vazio. Não foi possível salvar."
    else
      @material_motivador_id = params[:material_motivador_id]
      material = MaterialMotivador.find(@material_motivador_id)
      atividade = Atividade.find(material.atividade_id)
      projeto_id = atividade.projeto_id
      plano = Plano.where(projeto_id: projeto_id).pluck('professor_id')
      execucao = Execucao.where(projeto_id: projeto_id).pluck('professor_id')

      if plano.include?(current_professor.id) || execucao.include?(current_professor.id)
        @exercicio.material_motivador_id = @material_motivador_id
        if material != nil
            material.exercicios << @exercicio
        end
        if @exercicio.save
          redirect_to material_motivador_path(material)
        else
          render new
        end
      else
        redirect_to :back, alert: "Você não pode criar exercicios para este material."
      end
    end
  end

  def destroy
    @exercicio = Exercicio.find(params[:id])
    material_motivador_id = @exercicio.material_motivador_id
    @exercicio.destroy
    redirect_to material_motivador_path(material_motivador_id), alert: "Exercício excluído com sucesso"
  end

  private
  def exercicio_params
    params.require(:exercicio).permit(:enunciado, :numero, :material_motivador_id)
  end

end
