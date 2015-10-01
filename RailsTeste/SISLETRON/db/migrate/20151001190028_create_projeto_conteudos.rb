class CreateProjetoConteudos < ActiveRecord::Migration
  def change
    create_table :projeto_conteudos do |t|
      t.belongs_to :projeto, index: true
      t.belongs_to :conteudo, index: true
      t.timestamps
    end
  end
end
