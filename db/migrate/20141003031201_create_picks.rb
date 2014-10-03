class CreatePicks < ActiveRecord::Migration
  def change
    create_table :picks do |t|
      t.references :card, index: true
      t.references :user, index: true

      t.timestamps
    end
  end
end
