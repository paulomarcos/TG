class CreateExecucaos < ActiveRecord::Migration
  def change
    create_table :execucaos do |t|
      t.belongs_to :professor, index: true
      t.belongs_to :projeto, index: true
      t.timestamps
    end
  end
end
