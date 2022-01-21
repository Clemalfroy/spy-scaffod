class AddImageToSpy < ActiveRecord::Migration[6.1]
  def change
    add_column :spies, :image, :text
  end
end
