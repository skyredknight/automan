class CreateVehiculos < ActiveRecord::Migration
  def self.up
    create_table :vehiculos do |t|
      t.string :marca
      t.string :modelo
      t.integer :anio
      t.integer :kms
      t.references :usuario

      t.timestamps
    end
  end

  def self.down
    drop_table :vehiculos
  end
end
