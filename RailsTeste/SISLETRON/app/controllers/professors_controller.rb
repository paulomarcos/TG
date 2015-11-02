class ProfessorsController < ApplicationController
  before_action :require_professor, only: [:show, :index]

  def index
    @professors = Professor.all
  end

  def show
    @professor = Professor.find(params[:id])

    @turmas = @professor.turmas

    @plano = Plano.where(professor_id: @professor.id).pluck('projeto_id')
    @projetos_plano = Projeto.where(id: @plano)

    @execucao = Execucao.where(professor_id: @professor.id).pluck('projeto_id')
    @projetos_execucao = Projeto.where(id: @execucao)

  end

  def new
  end

  def create
    @professor = Professor.new(professor_params)
        if @professor.save
          session[:professor_id] = @professor.id
          redirect_to '/professors'
        else
          if params[:professor][:identificador]
            p = Professor.where(:identificador => params[:professor][:identificador])
            if p.size > 0
              flash[:error] = "Este identificador já existe"
            end
          end
          redirect_to '/cadastro_professor'
        end
  end

    private

      def professor_params
        params.require(:professor).permit(:nome, :identificador, :data_nascimento, :password, :password_confirmation)
      end


end
