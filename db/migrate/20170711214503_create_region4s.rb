class CreateRegion4s < ActiveRecord::Migration[5.1]
  def change
    create_table :region4s do |t|
      t.string :name

      t.timestamps
    end
  end
end
