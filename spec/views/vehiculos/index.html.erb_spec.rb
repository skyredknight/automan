require 'spec_helper'

describe "vehiculos/index.html.erb" do
  before(:each) do
    assign(:vehiculos, [
      stub_model(Vehiculo,
        :marca => "Marca",
        :modelo => "Modelo",
        :anio => 1,
        :kms => 1,
        :usuario => nil
      ),
      stub_model(Vehiculo,
        :marca => "Marca",
        :modelo => "Modelo",
        :anio => 1,
        :kms => 1,
        :usuario => nil
      )
    ])
  end

  it "renders a list of vehiculos" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Marca".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Modelo".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
