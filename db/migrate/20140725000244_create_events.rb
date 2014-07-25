class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.string :type
      t.datetime :start
      t.datetime :end
      t.text :description
      t.string :location
      t.boolean :public, default: true

      t.timestamps
    end
  end
end
