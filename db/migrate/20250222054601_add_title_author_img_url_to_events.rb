class AddTitleAuthorImgUrlToEvents < ActiveRecord::Migration[8.0]
  def change
    add_column :events, :title, :string
    add_column :events, :author, :string
    add_column :events, :img_url, :string
  end
end
