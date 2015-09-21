class CreateClasses < ActiveRecord::Migration
  def change
    create_table :classes do |t|
      t.string :nome, :limit => 100
      t.integer :ano, :limit => 1
      t.string :turma, :limit => 2
      t.string :descricao, :limit => 140
      t.timestamps
    end
  end
end
