class Add < ActiveRecord::Migration[5.1]
  def change
    create_table :articles do |t|
      t.string :title
      t.string :description, null: true, limit: 300
    end
  end
end
