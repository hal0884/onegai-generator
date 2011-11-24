class CreateBokins < ActiveRecord::Migration
  def change
    create_table :bokins do |t|
      t.string :name
      t.string :photourl
      t.string :secname

      t.timestamps
    end
  end
end
