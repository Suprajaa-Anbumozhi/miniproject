class CreateProblemposts < ActiveRecord::Migration
  def change
    create_table :problemposts do |t|
      t.text :problemtitle
      t.text :problemdesc
      t.integer :likes
      t.integer :User_Id

      t.timestamps
    end
  end
end
