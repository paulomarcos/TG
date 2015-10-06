class CreateMaterialMotivadors < ActiveRecord::Migration
  def change
    create_table :material_motivadors do |t|
      t.belongs_to :atividade, index: true
      t.string :palavrasChave
      t.string :tipo
      t.string :titulo
      t.string :conteudo
      t.timestamps
    end
  end
end
