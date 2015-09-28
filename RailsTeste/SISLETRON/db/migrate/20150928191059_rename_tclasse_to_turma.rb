class RenameTclasseToTurma < ActiveRecord::Migration
  def self.up
    rename_table :tclasse, :turma
  end

  def self.down
    rename_table :turma, :tclasse
  end
end
