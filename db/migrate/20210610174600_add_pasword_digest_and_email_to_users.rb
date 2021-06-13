class AddPaswordDigestAndEmailToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :pasword_digest, :string
    add_column :users, :email, :string, default: "", null: false
  end
end
