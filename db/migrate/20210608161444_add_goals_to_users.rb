class AddGoalsToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :goals, :string
  end
end
