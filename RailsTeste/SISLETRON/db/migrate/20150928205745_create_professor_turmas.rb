class CreateProfessorTurmas < ActiveRecord::Migration
  def change
    create_table :professor_turmas do |t|
      t.belongs_to :turma, index: true
			t.belongs_to :professor, index: true
      t.timestamps
    end
  end
end
