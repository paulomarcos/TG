class AddAlunosReferenceToTurmas < ActiveRecord::Migration
  def change
    add_reference :alunos, :turma, index: true
  end
end
