class Addphotoflagtoposts < ActiveRecord::Migration[5.0]
  def change
    add_column :posts,:is_photo,:boolean, :default=> false
  end
end
