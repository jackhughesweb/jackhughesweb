require 'spec_helper'

describe "BlogPosts" do
  it "allows user to view a list of posts" do
    visit posts_path
    page.should have_content("posts")
  end
  it "allows user to view a posts" do
    post = FactoryGirl.create(:post)
    visit post_path(post)
    page.should have_content("Title of post")
  end
  it "allows user to create a post" do
    post = FactoryGirl.create(:post)
    visit posts_path
    click_link "New Post"
    fill_in "Title", :with => post.title
    fill_in "Subtitle", :with => post.subtitle
    fill_in "Body", :with => post.body
    check "Published"
    fill_in "Slug", :with => post.slug
    click_button "Create"
    page.should have_content("Post was successfully created")
  end
  it "allows user to edit a post" do
    post = FactoryGirl.create(:post)
    visit post_path(post)
    click_link "Edit"
    fill_in "Title", :with => "Updated Title"
    click_button "Update"
    page.should have_content("Updated Title")
  end
  it "allows user to delete a post" do
    post = FactoryGirl.create(:post)
    visit post_path(post)
    click_link "Destroy"
    page.should_not have_content("Title of post")
  end
end
