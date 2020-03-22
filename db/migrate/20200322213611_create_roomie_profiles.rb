class CreateRoomieProfiles < ActiveRecord::Migration[6.0]
  def change
    create_table :roomie_profiles do |t|
      t.integer :max_rent
      t.integer :ideal_rent
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
