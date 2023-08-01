class CreateReactions < ActiveRecord::Migration[7.0]
  def change
    create_table :reactions do |t|
      t.string :kind
      t.string :reaction_type

      t.references :comeent, null: false, foreign_key: true
      t.references :usser, null: false, foreign_key: true
      t.references :poost, null: false, foreign_key: true

      t.timestamps
    end
  end
end
