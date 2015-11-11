class ProfessorsController < ApplicationController
  before_action :require_professor, only: [:show, :index, :edit, :update]

  def index
    @professors = Professor.all
  end

  def show
    @professor = Professor.find(params[:id])

    own_professor?(@professor)

    @turmas = @professor.turmas

    @plano = Plano.where(professor_id: @professor.id).pluck('projeto_id')
    @projetos_plano = Projeto.where(id: @plano)

    @execucao = Execucao.where(professor_id: @professor.id).pluck('projeto_id')
    @projetos_execucao = Projeto.where(id: @execucao)

  end

  def new
  end

  def edit
    @professor = Professor.find(params[:id])
    own_professor?(@professor)
  end

  def update
    @professor = Professor.find(params[:id])
    if @professor.id != current_professor.id
      redirect_to :back, alert: "Você não tem autorização para editar este professor"
    else
      if  @professor.update_attributes(professor_params)
        redirect_to(action: 'show', id: @professor.id)
      else
        render 'edit'
      end
    end
  end

  def create
    @professor = Professor.new(professor_params)
        if @professor.save
          session[:professor_id] = @professor.id
          redirect_to :root
        else
          if params[:professor][:identificador]
            p = Professor.where(:identificador => params[:professor][:identificador])
            if p.size > 0 && p.first.id != current_professor.id
              flash[:alert] = "Este identificador já existe"
            end
          end
          redirect_to '/cadastro_professor'
        end
  end

    private

      # Check if professor is the owner of the content
      def own_professor?(professor)
        if current_professor.id != professor.id
          redirect_to :root, alert: "Sem permissão para acessar página"
        end
      end

      def professor_params
        params.require(:professor).permit(:nome, :identificador, :data_nascimento, :password, :password_confirmation)
      end


end
