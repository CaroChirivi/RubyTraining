class CreatePeople < ActiveRecord::Migration[6.1]
  def change
    create_table :people do |t|
      t.string :name
      t.string :personType
      t.references :project, null: false, foreign_key: true
      t.references :country, null: false, foreign_key: true
      t.references :rol, null: false, foreign_key: true

      t.timestamps
    end
  end
end
