require 'rails_helper'

RSpec.describe "tweets/show", type: :view do
  before(:each) do
    @tweet = assign(:tweet, Tweet.create!(
      :body => "MyText",
      :likes => 2,
      :retweets => 3
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
  end
end
