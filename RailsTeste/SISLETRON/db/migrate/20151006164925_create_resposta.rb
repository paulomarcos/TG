class CreateResposta < ActiveRecord::Migration
  def change
    create_table :resposta do |t|
      t.belongs_to :aluno, index: true
      t.belongs_to :exercicio, index: true
      t.string :resposta
      t.timestamps
    end
  end
end
