class AddColumnParameterToBadge < ActiveRecord::Migration[6.1]
  def change
    add_column :badges, :parameter, :string, default: nil
  end
end
