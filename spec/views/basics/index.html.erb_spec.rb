require 'spec_helper'

describe "basics/index" do
  before(:each) do
    assign(:basics, [
      stub_model(Basic,
        :name => "Name",
        :necessary_stuff => "MyText",
        :how_to_make => "MyText"
      ),
      stub_model(Basic,
        :name => "Name",
        :necessary_stuff => "MyText",
        :how_to_make => "MyText"
      )
    ])
  end

  it "renders a list of basics" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
