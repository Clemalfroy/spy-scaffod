class CreateSpies < ActiveRecord::Migration[6.1]
  def change
    create_table :spies do |t|
      t.string :name
      t.date :arrival_date

      t.timestamps
    end
  end
end
