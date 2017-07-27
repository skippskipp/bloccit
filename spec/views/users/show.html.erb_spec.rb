require 'rails_helper'
include SessionsHelper

RSpec.describe "users/show.html.erb", type: :view do
  let(:my_topic) { create(:topic) }
  let(:my_user) { create(:user) }
  let(:my_post) { create(:post, topic: my_topic, user: my_user) }
  let(:my_other_post) { create(:post, topic: my_topic, user: my_user) }

  context 'signed in user' do
    before do
      create_session(my_user)
    end

  describe "users/show.html.erb" do
    it "displays the posts a user has favorited" do

    end

    it "displays the author gravatar next for each post favorited by the user" do

    end

    it "displays the number of votes for each post favorited by the user" do

    end

    it "displays the number of comments each post favorited by the user" do

    end
  end

end
