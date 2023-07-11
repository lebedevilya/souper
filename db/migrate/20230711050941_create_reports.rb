class CreateReports < ActiveRecord::Migration[7.0]
  def change
    create_table :reports do |t|
      t.text :comment
      t.decimal :cash
      t.decimal :terminal
      t.decimal :wolt

      t.references :restaurant, null: false, foreign_key: true

      t.timestamps
    end
  end
end
