module ApplyHelper

  def send_email_mailgun
    mg_client = Mailgun::Client.new(ENV["MAILGUN_API_KEY"])

    message_params =  {
      from: 'rusticanamail@gmail.com',
      to:   'mgenova03@gmail.com, jgenova80@hotmail.com, rusticanadoverrd@gmail.com',
      subject: "Rusticana Application",
      html:  "
      <p> You have a new application from <b>#{@apply[:first_name]} #{@apply[:last_name]} </b> for the position of <b>#{@apply[:position]}</b>.<p>
        
        <a href='http://www.rusticanapizza.com/admin/applications'><button>View Application</button></a>
      ",
      :'recipient-variables' => '{"mgenova03@gmail.com": {"first":"Marco", "id":1}, "jgenova80@hotmail.com": {"first":"Joann", "id": 2}, "rusticanadoverrd@gmail.com": {"first":"Anthony", "id": 3}}'
      }
                      

    result = mg_client.send_message(ENV["MAILGUN_DOMAIN"], message_params).to_h!

    message_id = result['id']
    message = result['message']
  end 

end