require "test_helper"

class PostTest < ActiveSupport::TestCase
  test "default_scope" do
    assert_includes Post.all, posts(:published)
    assert_not_includes Post.all, posts(:deleted)
  end

  test "visible" do
    assert_includes Post.visible, posts(:published)
    assert_not_includes Post.visible, posts(:deleted)
  end

  test "with_deleted" do
    assert_includes Post.with_deleted, posts(:published)
    assert_includes Post.with_deleted, posts(:deleted)
  end

  test "deleted" do
    assert_not_includes Post.deleted, posts(:published)
    assert_includes Post.deleted, posts(:deleted)
  end
end
