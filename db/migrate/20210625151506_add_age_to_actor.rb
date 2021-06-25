class AddAgeToActor < ActiveRecord::Migration[6.1]
  def change
    add_column :actors, :actor_age, :integer
  end
end
