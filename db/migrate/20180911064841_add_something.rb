class AddSomething < ActiveRecord::Migration[5.1]
  def change
    add_column :articles, :approved, :boolean, default: false, null: false
  end
end
