class AddGenderToActor < ActiveRecord::Migration[6.1]
  def change
    add_column :actors, :actor_gender, :string
  end
end
