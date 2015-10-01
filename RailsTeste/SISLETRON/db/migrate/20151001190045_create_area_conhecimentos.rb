class CreateAreaConhecimentos < ActiveRecord::Migration
  def change
    create_table :area_conhecimentos do |t|
      t.string :titulo
      t.timestamps
    end
  end
end
