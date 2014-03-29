FactoryGirl.define do
 factory :post do
    title "Title of post"
    subtitle "Subtitle of post"
    body "Body of post"
    publish_date Date.today
    published :true
    slug "test-post"
  end
end
