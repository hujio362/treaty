FactoryBot.define do
  factory :post do
    name              { 'test' }
    category_id       { 2 }
    explanation       { 'testtest' }
    keyword_id         { 2 }
    association :user, factory: :user

    # after(:build) do |item|
    #   item.image.attach(io: File.open('spec/fixtures/files/test_image.jpg'), filename: 'test_image.jpg', content_type: 'image/jpg')
    # end
  end
end
