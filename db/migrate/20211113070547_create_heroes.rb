class CreateHeroes < ActiveRecord::Migration[6.1]
  def change
    create_table :heroes do |t|
      t.bigint :mighty_party_id
      t.text :name
      t.text :rarity
      t.text :alignment
      t.text :gender
      t.text :combat_range

      t.timestamps
    end
  end
end
