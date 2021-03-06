# encoding: utf-8
require 'spec_helper'

describe 'selection_processes/show' do
  login_admin
  
   before(:each) do
    @selection_process = assign(:selection_process, stub_model(SelectionProcess,
      :id => 99,
      :name_process => 'Premios ACME',
      :place => 'Lugar donde se hace',
      :duration => '180',
      :start_date => '2014-01-01',
      :end_date => '2014-12-01', 
      :process_type_id => 'premio',
      :state => 'nuevo',
      :organizer_id => '1'
    ))
  end

  it "renders attributes in <p>" do
    render # :template => "selection_processes/show", :layout => "layouts/application", :locals => {user_session[:selection_process_id] => 99}
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nombre del Proceso/)
    rendered.should match(/Lugar/)
    rendered.should match(/Duración/)
    rendered.should match(/Estado/)
  end
end