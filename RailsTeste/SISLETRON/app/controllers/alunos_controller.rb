class AlunosController < ApplicationController
  def index
    @alunos = Aluno.all
  end

  def show
    @aluno = Aluno.find(params[:id])
  end

  def new

  end

  def create
    aluno = Aluno.new(aluno_params)
        if aluno.save
          session[:aluno_id] = aluno.id
          redirect_to '/alunos'
        else
          redirect_to '/cadastro'
        end
  end

    private

      def aluno_params
        params.require(:aluno).permit(:nome, :identificador, :data_nascimento, :password, :password_confirmation)
      end

end
