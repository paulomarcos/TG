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
    @aluno = Aluno.new(aluno_params)
        if @aluno.save
          session[:aluno_id] = @aluno.id
          redirect_to '/alunos'
        else
          if params[:aluno][:identificador]
            a = Aluno.where(:identificador => params[:aluno][:identificador])
            if a.size > 0
              flash[:error] = "Este identificador já existe"
            end
          end
          redirect_to '/cadastro_aluno'
        end
  end

    private

      def aluno_params
        params.require(:aluno).permit(:nome, :identificador, :data_nascimento, :password, :password_confirmation)
      end

end
