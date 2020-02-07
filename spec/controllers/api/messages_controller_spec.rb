require 'rails_helper'

RSpec.describe Api::MessagesController, :type => :controller do

  describe "#create" do
    let!(:message_template){ create(:message_template,
                                      name: 'hello_template',
                                      body: "Hello %name%. %forest_steward% will see you in %preferred_forest%.",
                                    )}

    let!(:user){ create(:user,
                          email: "user@email.com",
                          name: 'Customer Mcgee',
                          forest_steward: 'Frank Smith',
                          preferred_forest: 'Santa Cruz'
                        )}

    let(:params){
      {
        message_template_name: 'hello_template',
        email: "user@email.com",
      }
    }

    it 'creates a message' do
      post :create, params: params

      message = assigns(:message)
      expect(message.body).to eq "Hello Customer Mcgee. Frank Smith will see you in Santa Cruz."
    end
  end

end