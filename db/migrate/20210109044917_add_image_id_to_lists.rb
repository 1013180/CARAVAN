class AddImageIdToLists < ActiveRecord::Migration[5.2]
  def change
    add_column :blogs, :title, :string
    add_column :blogs, :category, :string
    add_column :blogs, :body, :text
  end
end
