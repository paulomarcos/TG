class CreateProfessorClasses < ActiveRecord::Migration
  def change
    create_table :professor_classes do |t|
      t.belongs_to :tclasse, index: true
      t.belongs_to :professor, index: true
      t.timestamps
    end
  end
end
