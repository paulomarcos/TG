class CreateConteudos < ActiveRecord::Migration
  def change
    create_table :conteudos do |t|
      t.string :titulo
      t.string :descricao
      t.integer :ano
      t.belongs_to :area_conhecimento, index: true
      t.timestamps
    end
  end
end
