class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      t.string :name
      t.float :price
      t.string :author
      t.string :category
      t.string :editor
      t.string :description

      t.timestamps
    end
  end
end
