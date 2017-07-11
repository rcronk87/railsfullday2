class AddRegion4ToSightings < ActiveRecord::Migration[5.1]
  def change
    add_reference :sightings, :region4, foreign_key: true
  end
end
