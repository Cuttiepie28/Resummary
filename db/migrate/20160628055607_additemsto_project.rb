class AdditemstoProject < ActiveRecord::Migration[5.0]
  def change
      add_column :projects, :screenshot, :string
      add_column :projects, :project_link, :string
  end
end
