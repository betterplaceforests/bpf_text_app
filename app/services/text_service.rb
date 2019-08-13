class TextService
  attr_accessor :status, :message
  
  def initialize(response)
    @status = response[:status]
    @message = response[:message]
  end
  
  def self.send(to_number, from_number, body)
    ## Text sending magic here ##

    ## For simplicity, 
    ## this is a black box that 
    ## returns a success hash or an error hash at pseudo-random
    message_sent = [true, false, true, true].sample
    
    if message_sent
      response = {status: "success", message: body}
    else
     response = {status: "error", message: "Bad number"}
    end
    
    new(response)
  end
end