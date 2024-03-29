class CreateEvents < ActiveRecord::Migration[7.0]
  def change
    create_table :events do |t|
      t.string :title
      t.date :date
      t.string :location
      t.belongs_to :creator, foreign_key: { to_table: :users}, index: true, null: false
      t.timestamps
    end
  end
end
