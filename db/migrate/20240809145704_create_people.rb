# frozen_string_literal: true

class CreatePeople < ActiveRecord::Migration[6.1]
  def change
    create_table :people do |t|
      t.string :first_name
      t.integer :lock_version, null: false, default: 0

      t.timestamps
    end
  end
end
