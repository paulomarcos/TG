class AtividadesController < ApplicationController

  def new
    @atividade = Atividade.new

  end

  def create
    @atividade = Atividade.new(atividade_params)
    projeto = params[:atividade][:projeto_id]
    p = Projeto.find_by_id(projeto)
    if p != nil
        p.atividades << @atividade
    end
    if @atividade.save
      redirect_to '/projetos'
    else
      render new
    end
  end

  private
  def atividade_params
    params.require(:atividade).permit(:titulo)
  end

end
