class CreateMissions < ActiveRecord::Migration[6.1]
  def change
    create_table :missions do |t|
      t.string :name
      t.references :spy, null: false, foreign_key: true
      t.string :description
      t.string :text

      t.timestamps
    end
  end
end
