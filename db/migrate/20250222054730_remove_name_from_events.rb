class RemoveNameFromEvents < ActiveRecord::Migration[8.0]
  def change
    remove_column :events, :name, :string
  end
end
