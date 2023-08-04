class CreateReactions < ActiveRecord::Migration[7.0]
  def change
    create_table :reactions do |t|
      t.string :kind
      t.string :reaction_type

      # se elimina la necesidad que la relación no sea nula en comeent y en poost
      t.references :comeent, foreign_key: true
      t.references :usser,  foreign_key: true
      t.references :poost, foreign_key: true

      t.timestamps
    end
  end
end
