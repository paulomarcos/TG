class AlunosController < ApplicationController
  before_action :require_aluno, only: [:show, :index]

  def index
    @alunos = Aluno.all
  end

  def show
    @aluno = Aluno.find(params[:id])
    own_aluno?(@aluno)
  end

  def new
  end

  def edit
    @aluno = Aluno.find(params[:id])
    own_aluno?(@aluno)
  end

  def update
    @aluno = Aluno.find(params[:id])
    if @aluno.id != current_aluno.id
      redirect_to :back, alert: "Você não tem autorização para editar este aluno"
    else
      if  @aluno.update_attributes(aluno_params)
        redirect_to(action: 'show', id: @aluno.id)
      else
        render 'edit'
      end
    end
  end

  def create
    @aluno = Aluno.new(aluno_params)
        if @aluno.save
          session[:aluno_id] = @aluno.id
          redirect_to :root
        else
          if params[:aluno][:identificador]
            a = Aluno.where(:identificador => params[:aluno][:identificador])
            if a.size > 0 && a.first.id != current_aluno.id
              flash[:alert] = "Este identificador já existe"
            end
          end
          redirect_to '/cadastro_aluno'
        end
  end

    private

      def own_aluno?(aluno)
        if current_aluno.id != aluno.id
          redirect_to :root, alert: "Sem permissão para acessar página"
        end
      end


      def aluno_params
        params.require(:aluno).permit(:nome, :identificador, :data_nascimento, :password, :password_confirmation)
      end

end
