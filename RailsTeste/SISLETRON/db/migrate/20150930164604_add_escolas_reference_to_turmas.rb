class AddEscolasReferenceToTurmas < ActiveRecord::Migration
  def change
    add_reference :turmas, :escola, index: true
  end
end
