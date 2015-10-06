class CreateAtividades < ActiveRecord::Migration
  def change
    create_table :atividades do |t|
      t.string :titulo
      t.belongs_to :projeto, index: true
      t.timestamps
    end
  end
end
