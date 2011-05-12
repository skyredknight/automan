require 'spec_helper'

describe "vehiculos/show.html.erb" do
  before(:each) do
    @vehiculo = assign(:vehiculo, stub_model(Vehiculo,
      :marca => "Marca",
      :modelo => "Modelo",
      :anio => 1,
      :kms => 1,
      :usuario => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Marca/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Modelo/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
  end
end
