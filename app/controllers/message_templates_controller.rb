class MessageTemplatesController < ApplicationController

  def index

  end

  def create

  end

  def new

  end

  def edit
    @message_template = MessageTemplate.find(params[:id])
  end

  def update
    @message_template = MessageTemplate.find(params[:id])
    @message_template.update(message_template_params)

    redirect_to message_template_path(@message_template)
  end

  def show
    @message_template = MessageTemplate.find(params[:id])
  end

  private
    def message_template_params
      params.require(:message_template).permit(:body, :name)
    end

end
