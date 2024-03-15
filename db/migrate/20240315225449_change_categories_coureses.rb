class ChangeCategoriesCoureses < ActiveRecord::Migration[7.1]
  def change
    rename_table :categories_coureses, :categories_courses
  end
end
