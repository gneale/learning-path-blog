require "test_helper"

class BlogPostTest < ActiveSupport::TestCase
  test "should return true for a draft blog post" do
    #binding.irb
    # assert blog_post = BlogPost.new(published_at: nil).draft?
    assert blog_posts(:draft).draft?
  end

  test "draft ?should return false for a published blog post" do
    #binding.irb
    # refute blog_post = BlogPost.new(published_at: 1.year.ago).draft?
    refute blog_posts(:published).draft?
  end

  test "draft ?should return false for a scheduled blog post" do
    #binding.irb
    # refute blog_post = BlogPost.new(published_at: 1.year.from_now).draft?
    refute blog_posts(:scheduled).draft?
  end
end
