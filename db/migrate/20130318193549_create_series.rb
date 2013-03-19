class CreateSeries < ActiveRecord::Migration
  def change
    create_table :series do |t|
      t.string :name
      t.date :begin_date
      t.date :end_date

      t.timestamps
    end
  end
end
