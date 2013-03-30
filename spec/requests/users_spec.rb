require 'spec_helper'

describe "Users Pages" do
  subject { page }
    describe "index page " do
      let(:user) { FactoryGirl.create(:user) }
     before {visit users_path}
     it {should have_selector('h1', :text => "Listing users")}
     it {should have_link('Show'), href: user_path(user)}
     it {should have_link('New User'), href: new_user_path}
    end

    describe "show page" do
      let(:user) { FactoryGirl.create(:user) }
      before {visit user_path(user)}
      it {should have_selector('h3', :text => "User albums")}
    end

    defcribe ""
  end
