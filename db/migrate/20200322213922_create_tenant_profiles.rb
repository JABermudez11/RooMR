class CreateTenantProfiles < ActiveRecord::Migration[6.0]
  def change
    create_table :tenant_profiles do |t|
      t.integer :room_rent
      t.integer :rooms
      t.boolean :pet_friendly
      t.text :description
      t.string :location
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
