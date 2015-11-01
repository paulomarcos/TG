class AddLoginFieldsToProfessors < ActiveRecord::Migration
  def change
    add_column :professors, :identificador, :string
    add_index :professors, :identificador, unique: true
    add_column :professors, :password_digest, :string
  end
end
