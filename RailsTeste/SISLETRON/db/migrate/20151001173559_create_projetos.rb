class CreateProjetos < ActiveRecord::Migration
  def change
    create_table :projetos do |t|
      t.string :titulo
      t.string :descricao
      t.string :avaliacao
      t.timestamps
    end
  end
end
