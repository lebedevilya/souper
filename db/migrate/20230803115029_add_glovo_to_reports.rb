class AddGlovoToReports < ActiveRecord::Migration[7.0]
  def change
    add_column :reports, :glovo, :decimal, default: 0
  end
end
