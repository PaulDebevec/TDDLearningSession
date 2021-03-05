class CreateBlogPost < ActiveRecord::Migration[6.0]
  def change
    create_table :blog_posts do |t|
      t.string :post_body
      
      t.timestamps
    end
  end
end
