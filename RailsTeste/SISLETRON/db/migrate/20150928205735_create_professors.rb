class CreateProfessors < ActiveRecord::Migration
  def change
    create_table :professors do |t|
      t.string :nome
      t.date :data_nascimento
      t.timestamps
    end
  end
end
