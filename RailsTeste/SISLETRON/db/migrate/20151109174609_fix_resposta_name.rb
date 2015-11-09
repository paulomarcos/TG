class FixRespostaName < ActiveRecord::Migration
  def change
    rename_column :respostas, :resposta, :conteudo
  end
end
