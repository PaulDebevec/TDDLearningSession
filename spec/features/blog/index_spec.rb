require 'rails_helper'

RSpec.describe 'blog index page' do
    before(:each) do
      @blog_1 = Blog.create!( title: "Dogs. Why you should have more than one!",
                              image: "https://media.nature.com/lw800/magazine-assets/d41586-020-01430-5/d41586-020-01430-5_17977552.jpg")
      @blog_2 = Blog.create!( title: "Cats are cuddlier than dogs - True story.",
                              image: "https://www.catster.com/wp-content/uploads/2017/09/A-gray-cat-on-a-womans-lap-as-she-reads.jpg")
      @blog_3 = Blog.create!( title: "Video Games Are Good For The Soul")
    end

    it 'as a visitor when I visit the blogs index page' do
    visit '/'

    click_link "All Blogs"

    expect(current_path).to eq('/blogs')

    within "#blog-#{@blog_1.id}" do
      expect(page).to have_css("img[src*='#{@blog_1.image}']")
      expect(page).to have_link(@blog_1.title)
    end

    within "#blog-#{@blog_2.id}" do
      expect(page).to have_css("img[src*='#{@blog_2.image}']")
      expect(page).to have_link(@blog_2.title)
    end

    within "#blog-#{@blog_2.id}" do
      expect(page).to have_css("img[src*='#{@blog_2.image}']")
      expect(page).to have_link(@blog_2.title)
    end
  end
end
