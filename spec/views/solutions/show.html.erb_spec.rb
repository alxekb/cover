require 'rails_helper'

RSpec.describe "solutions/show", type: :view do
  before(:each) do
    @solution = assign(:solution, Solution.create!(
      :problem => "MyText",
      :solution => "MyText",
      :offers => ""
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(//)
  end
end
