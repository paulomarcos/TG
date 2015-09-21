class CreateEscolas < ActiveRecord::Migration
  def change
    create_table :escolas do |t|

      t.timestamps
    end
  end
end
