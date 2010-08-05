class CreateServices < ActiveRecord::Migration
  def self.up
    create_table :services do |t|
      t.string :url
      t.string :name
      t.string :public
      t.boolean :standard
      t.string :email
      t.integer :hits
      t.string :description

      t.timestamps
    end
  end

  def self.down
    drop_table :services
  end
end
