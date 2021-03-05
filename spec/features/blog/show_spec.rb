require 'rails_helper'

RSpec.describe 'blog show page' do
    before(:each) do
      @blog_1 = Blog.create!(title: "Dogs. Why you should have more than one!", image: "https://media.nature.com/lw800/magazine-assets/d41586-020-01430-5/d41586-020-01430-5_17977552.jpg")
      @blog_2 = Blog.create!(title: "Cats are cuddlier than dogs - True story.", image: "https://www.catster.com/wp-content/uploads/2017/09/A-gray-cat-on-a-womans-lap-as-she-reads.jpg")
      @blog_3 = Blog.create!(title: "Video Games Are Good For The Soul")
      @blog_1_post_1 = @blog_1.blog_posts.create!(post_body: "Morbi ac dui sit amet mauris accumsan molestie. Mauris eget nisi et nulla vehicula mattis. Donec pulvinar, tellus ut facilisis tincidunt, arcu sapien tincidunt arcu.")
      @blog_2_post_1 = @blog_2.blog_posts.create!(post_body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas eget diam placerat, bibendum quam sed, sollicitudin sem. Mauris tincidunt eros sed leo suscipit scelerisque non et eros. Donec dictum ultrices neque, eu pretium ipsum euismod eget. Etiam sapien turpis, pretium at mattis in, pellentesque vel lectus. Cras pharetra eleifend eros, at molestie nibh faucibus vel. Donec vel aliquet augue. Aliquam erat volutpat.")
    end

    it 'as a visitor when I visit the a blogs show page' do
    visit '/blogs'

    within "#blog-#{@blog_2.id}" do
      click_link @blog_2.title
    end

    expect(current_path).to eq("/blogs/#{@blog_2.id}")
    # Verify the page shows the blog image and post_body
    expect(page).to have_css("img[src*='#{@blog_2.image}']")

    within "#blog_post-#{@blog_2_post_1.id}" do
      expect(page).to have_content(@blog_2_post_1.post_body)
    end

    # Verify the page does not show any other blogs or posts
    expect(page).not_to have_content(@blog_1_post_1)
    expect(page).not_to have_css("img[src*='#{@blog_1.image}']")
    expect(page).not_to have_content(@blog_3.title)

    # visit a different blog post to verify the selected blog is the only one showing
    visit '/blogs'

    within "#blog-#{@blog_1.id}" do
      click_link @blog_1.title
    end

    expect(current_path).to eq("/blogs/#{@blog_1.id}")
    # Verify the page shows the blog image and post_body
    expect(page).to have_css("img[src*='#{@blog_1.image}']")

    within "#blog_post-#{@blog_1_post_1.id}" do
      expect(page).to have_content(@blog_1_post_1.post_body)
    end

    # Verify the page does not show any other blogs or posts
    expect(page).not_to have_content(@blog_2_post_1)
    expect(page).not_to have_css("img[src*='#{@blog_2.image}']")
    expect(page).not_to have_content(@blog_3.title)
  end
end
