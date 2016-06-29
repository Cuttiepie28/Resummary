class CreateProjects < ActiveRecord::Migration[5.0]
  def change
    create_table :projects do |t|
      t.string :title
      t.text :summary
      t.string :start_year
      t.string :end_year

      t.timestamps
    end
  end
end
