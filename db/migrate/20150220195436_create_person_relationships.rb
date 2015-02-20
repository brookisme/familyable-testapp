class CreatePersonRelationships < ActiveRecord::Migration
  def change
    create_table :person_relationships do |t|
      t.references :person, index: true
      t.references :child, index: true

      t.timestamps
    end
  end
end
