class AddExpensesToReports < ActiveRecord::Migration[7.0]
  def change
    add_column :reports, :expenses, :decimal, default: 0
    change_column_default :reports, :cash, 0
    change_column_default :reports, :terminal, 0
    change_column_default :reports, :wolt, 0
  end
end
