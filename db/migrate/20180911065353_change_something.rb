class ChangeSomething < ActiveRecord::Migration[5.1]
  def up
    change_column_default :articles, :approved, true
    add_timestamps :articles
  end

  def down
    remove_timestamps :articles
    change_column_default :articles, :approved, false
  end
end
