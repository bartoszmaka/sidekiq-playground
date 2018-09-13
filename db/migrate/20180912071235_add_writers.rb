class AddWriters < ActiveRecord::Migration[5.1]
  def change
    create_table :writers do |t|
      t.string :name, null: false
      t.string :pen_color
    end
  end
end
