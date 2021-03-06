class CreatePostAuthorities < ActiveRecord::Migration
  def self.up
    create_table :post_authorities do |t|
      t.string :title
      t.string :permlink
      t.string :rails_version
      t.string :reference_module
      t.integer :status, :default => 0

      t.timestamps
    end
  end

  def self.down
    drop_table :post_authorities
  end
end
