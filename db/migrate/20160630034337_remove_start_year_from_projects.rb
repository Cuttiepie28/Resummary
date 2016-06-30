class RemoveStartYearFromProjects < ActiveRecord::Migration[5.0]
  def change
      remove_column :projects, :start_year,:string
  end
end
