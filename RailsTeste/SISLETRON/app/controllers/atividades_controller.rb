class AtividadesController < ApplicationController

  def new
    @atividade = Atividade.new()
    @projeto_id = params[:projeto_id]
  end

  def create
    @atividade = Atividade.new(atividade_params)
    @projeto_id = params[:projeto_id]
    @atividade.projeto_id = @projeto_id
    p = Projeto.find_by_id(@projeto_id)
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
    params.require(:atividade).permit(:titulo, :projeto_id)
  end

end
