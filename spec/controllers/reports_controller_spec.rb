require 'spec_helper'

describe ReportsController, type: :controller do
  specify 'index' do
    FactoryGirl.create_list(:report, 3)
    get :index
    expect(response).to be_success
    expect(assigns(:reports)).to match_array Report.all
  end
end
