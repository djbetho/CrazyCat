class CreateComeents < ActiveRecord::Migration[7.0]
  def change
    create_table :comeents do |t|
      t.string :content
      t.references :usser, null: false, foreign_key: true
      t.references :poost, null: false, foreign_key: true

      t.timestamps
    end
  end
end
