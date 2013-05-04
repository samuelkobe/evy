# This migration comes from refinery_works (originally 1)
class CreateWorksWorks < ActiveRecord::Migration

  def up
    create_table :refinery_works do |t|
      t.string :title
      t.integer :service_id
      t.string :service_type
      t.text :description
      t.integer :photo_1_id
      t.integer :photo_2_id
      t.integer :photo_3_id
      t.integer :photo_4_id
      t.integer :photo_5_id
      t.integer :photo_6_id
      t.integer :photo_7_id
      t.integer :photo_8_id
      t.integer :position

      t.timestamps
    end

  end

  def down
    if defined?(::Refinery::UserPlugin)
      ::Refinery::UserPlugin.destroy_all({:name => "refinerycms-works"})
    end

    if defined?(::Refinery::Page)
      ::Refinery::Page.delete_all({:link_url => "/works/works"})
    end

    drop_table :refinery_works

  end

end
