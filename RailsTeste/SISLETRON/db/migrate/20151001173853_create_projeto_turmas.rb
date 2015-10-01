class CreateProjetoTurmas < ActiveRecord::Migration
  def change
    create_table :projeto_turmas do |t|
    t.belongs_to :turma, index: true
    t.belongs_to :projeto, index: true
    t.timestamps
    end
  end
end
