class CreateEscolas < ActiveRecord::Migration
  def change
    create_table :escolas do |t|
      t.string :nome, :limit => 100
      t.string :telefone, :limit => 14
      t.string :imagem
      t.string :estado
      t.string :cidade
      t.timestamps
    end
  end
end
