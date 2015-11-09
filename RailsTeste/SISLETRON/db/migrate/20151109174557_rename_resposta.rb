class RenameResposta < ActiveRecord::Migration
  def change
    rename_table :resposta, :respostas
  end
end
