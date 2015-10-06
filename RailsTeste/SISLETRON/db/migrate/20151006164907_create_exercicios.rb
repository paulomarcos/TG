class CreateExercicios < ActiveRecord::Migration
  def change
    create_table :exercicios do |t|
      t.belongs_to :material_motivador, index: true
      t.string  :enunciado
      t.string  :correcao
      t.string  :tipo
      t.float   :nota
      t.integer :numero
      t.timestamps
    end
  end
end
