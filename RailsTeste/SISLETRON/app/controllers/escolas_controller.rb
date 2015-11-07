class EscolasController < ApplicationController
  before_action :authorize
  
  def index
    @escolas = Escola.all
  end

  def show
    @escola = Escola.find(params[:id])
    @turmas = @escola.turmas
  end
end
