class MakePhotoTable < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :image
      t.string :name
      t.text :description
    end
  end
end
