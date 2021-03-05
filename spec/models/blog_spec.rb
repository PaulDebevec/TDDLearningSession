require 'rails_helper'

describe Blog, type: :model do
  describe 'validations' do
    it {should validate_presence_of(:title)}
  end

  describe "relationships" do
    it {should have_many(:blog_posts)}
  end
end
