class CreateSecrets < ActiveRecord::Migration[6.1]
  def change
    create_table :secrets do |t|
      t.text :source
      t.text :description
      t.references :mission, null: false, foreign_key: true

      t.timestamps
    end
  end
end
