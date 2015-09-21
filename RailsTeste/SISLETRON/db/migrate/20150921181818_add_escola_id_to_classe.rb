class AddEscolaIdToClasse < ActiveRecord::Migration
  def change
    add_column :classes, :escola_id, :integer
  end
end
