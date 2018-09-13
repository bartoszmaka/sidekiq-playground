class AddColumnsToArticle < ActiveRecord::Migration[5.1]
  def change
    add_reference :articles, :writer
  end
end
