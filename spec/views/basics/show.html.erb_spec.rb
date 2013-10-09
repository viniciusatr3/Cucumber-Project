require 'spec_helper'

describe "basics/show" do
  before(:each) do
    @basic = assign(:basic, stub_model(Basic,
      :name => "Name",
      :necessary_stuff => "MyText",
      :how_to_make => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/MyText/)
    rendered.should match(/MyText/)
  end
end
