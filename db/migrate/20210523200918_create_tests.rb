class CreateTests < ActiveRecord::Migration[6.1]
  def change
    create_table :tests do |t|
      t.string :title, null: false
      t.integer :level
      t.references :category, foreign_key: { to_table: :categories }, index: true

      t.timestamps

    end
  end
end
