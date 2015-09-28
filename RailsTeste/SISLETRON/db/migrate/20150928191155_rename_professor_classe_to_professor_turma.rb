class RenameProfessorClasseToProfessorTurma < ActiveRecord::Migration
  def self.up
    rename_table :professor_classe, :professor_turma
  end

  def self.down
    rename_table :professor_turma, :professor_classe
  end
end
