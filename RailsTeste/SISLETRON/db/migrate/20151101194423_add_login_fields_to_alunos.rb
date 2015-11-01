class AddLoginFieldsToAlunos < ActiveRecord::Migration
  def change
    add_column :alunos, :identificador, :string
    add_index :alunos, :identificador, unique: true
    add_column :alunos, :password_digest, :string
  end
end
