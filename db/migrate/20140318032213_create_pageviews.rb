class CreatePageviews < ActiveRecord::Migration
  def change
    create_table :pageviews do |t|
      t.string :page
      t.string :ip

      t.timestamps
    end
  end
end
