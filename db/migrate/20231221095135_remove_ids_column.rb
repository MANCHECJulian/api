class RemoveIdsColumn < ActiveRecord::Migration[7.1]
  def change
    # Supprimez la colonne id existante
    remove_column :users, :id
    remove_column :users, :uuid
  end
end
