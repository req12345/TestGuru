class CreateAnswers < ActiveRecord::Migration[6.1]
  def change
    create_table :answers do |t|
      t.string :body, null: false
      t.string :correct
      t.references :question, foreign_key: { to_table: :questions }, index: true

      t.timestamps
    end
  end
end
