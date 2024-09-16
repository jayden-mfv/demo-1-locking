# frozen_string_literal: true

class CreateUserProfiles < ActiveRecord::Migration[6.1]
  def change
    create_table :user_profiles do |t|
      t.references :user, null: false, foreign_key: true
      # t.references :user, null: false, index: { unique: true }, foreign_key: true

      t.string :code, null: false

      t.timestamps

      t.index :code, unique: true
    end
  end
end
