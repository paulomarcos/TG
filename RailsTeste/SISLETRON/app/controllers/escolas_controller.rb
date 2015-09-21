class EscolasController < ApplicationController
  def index
    @escolas = Escola.all
  end
end
