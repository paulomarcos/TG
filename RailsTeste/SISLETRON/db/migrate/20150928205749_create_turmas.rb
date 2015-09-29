class CreateTurmas < ActiveRecord::Migration
  def change
    create_table :turmas do |t|
      t.string :ano
      t.string :turma
      t.string :descricao
      t.timestamps
    end
  end
end
