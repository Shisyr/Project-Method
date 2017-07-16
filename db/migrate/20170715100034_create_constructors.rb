class CreateConstructors < ActiveRecord::Migration[5.1]
  def change
    create_table :constructors do |t|
      t.timestamps
    end
  end
end
