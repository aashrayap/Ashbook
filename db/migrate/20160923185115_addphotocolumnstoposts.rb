class Addphotocolumnstoposts < ActiveRecord::Migration[5.0]
  def change
    add_attachment :posts,:photo
  end
end
