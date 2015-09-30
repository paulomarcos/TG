class EscolasController < ApplicationController
  def index
    @escolas = Escola.all
  end

  def show
    @escola = Escola.find(params[:id])
    @classes = @escola.classes
  end
end
