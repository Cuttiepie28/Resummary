class RemoveEndYearFromProjects < ActiveRecord::Migration[5.0]
  def change
    remove_column :projects, :end_year, :string
  end
end
