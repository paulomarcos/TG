class CreateAlunos < ActiveRecord::Migration
  def change
    create_table :alunos do |t|
      t.string :nome
      t.string :data_nascimento
      t.belongs_to :turma, index: true
      t.timestamps
    end
  end
end
