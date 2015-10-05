class CreatePlanos < ActiveRecord::Migration
  def change
    create_table :planos do |t|
      t.belongs_to :professor, index: true
      t.belongs_to :projeto, index: true
      t.timestamps
    end
  end
end
