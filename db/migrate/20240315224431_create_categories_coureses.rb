class CreateCategoriesCoureses < ActiveRecord::Migration[7.1]
  def change
    create_table :categories_coureses do |t|
      t.belongs_to :category
      t.belongs_to :course
      t.timestamps
    end
  end
end
