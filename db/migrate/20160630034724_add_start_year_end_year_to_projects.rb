class AddStartYearEndYearToProjects < ActiveRecord::Migration[5.0]
  def change
    add_column :projects, :start_year, :date
    add_column :projects, :end_year, :date
  end
end
