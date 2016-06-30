class ChangeYeartoDateType < ActiveRecord::Migration[5.0]
  def change
    def up
      change_column :projects, :start_year, :date
      change_column :projects, :end_year, :date
    end
    def down
      change_column :projects, :start_year, :string
      change_column :projects, :end_year, :string
    end
  end
end
