# frozen_string_literal: true

class Initialization < ActiveRecord::Migration[6.0]
  def change
    create_table :languages do |t|
      t.string :label
    end
    add_index :languages, :label, unique: true

    create_table :frameworks do |t|
      t.references :language
      t.string :label
    end

    add_index :frameworks, [:language_id, :label], unique: true

    create_table :keys do |t|
      t.string :label
    end
    add_index :keys, :label, unique: true

    create_table :writable, id: false do |t|
      t.references :language
      t.references :framework
    end       

    create_table :values do |t|
      t.float :value
      t.references :key
    end

    create_table :metrics, id: false do |t|
      t.references :framework
      t.references :value
    end
  end
end