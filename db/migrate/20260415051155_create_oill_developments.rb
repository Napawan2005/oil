class CreateOillDevelopments < ActiveRecord::Migration[8.1]
  def change
    create_table :oill_developments do |t|
      t.timestamps
    end
  end
end
