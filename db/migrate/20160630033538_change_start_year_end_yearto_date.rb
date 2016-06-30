class ChangeStartYearEndYeartoDate < ActiveRecord::Migration[5.0]
  def change
    def up
      change_column :project, :start_year, :date
      change_column :project, :end_year, :date
    end
    def down
      change_column :project, :start_year, :string
      change_column :project, :end_year, :string
    end
  end
end
