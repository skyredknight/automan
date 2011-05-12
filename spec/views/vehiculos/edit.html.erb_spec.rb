require 'spec_helper'

describe "vehiculos/edit.html.erb" do
  before(:each) do
    @vehiculo = assign(:vehiculo, stub_model(Vehiculo,
      :marca => "MyString",
      :modelo => "MyString",
      :anio => 1,
      :kms => 1,
      :usuario => nil
    ))
  end

  it "renders the edit vehiculo form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => vehiculos_path(@vehiculo), :method => "post" do
      assert_select "input#vehiculo_marca", :name => "vehiculo[marca]"
      assert_select "input#vehiculo_modelo", :name => "vehiculo[modelo]"
      assert_select "input#vehiculo_anio", :name => "vehiculo[anio]"
      assert_select "input#vehiculo_kms", :name => "vehiculo[kms]"
      assert_select "input#vehiculo_usuario", :name => "vehiculo[usuario]"
    end
  end
end
