class AddProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :projects do |t|
      t.string :topic
    end
  end
end
