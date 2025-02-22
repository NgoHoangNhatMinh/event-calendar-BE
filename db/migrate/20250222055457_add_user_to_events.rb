class AddUserToEvents < ActiveRecord::Migration[8.0]
  def change
    add_reference :events, :user, foreign_key: true, null: true
  end
end
