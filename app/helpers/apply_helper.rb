module ApplyHelper

  def send_email_mailgun
    mg_client = Mailgun::Client.new(ENV["MAILGUN_API_KEY"])

    message_params =  {
      from: 'mgenova03@gmail.com',
      to:   'mgenova03@gmail.com',
      subject: "Rusticana Application",
      html:  "
      <p> You have a new application from <b>#{@apply[:first_name]} #{@apply[:last_name]} </b> for the position of <b>#{@apply[:position]}</b>.<p>
        
        <a href='http://localhost:3000/admin_panel/applications'><button>View Application</button></a>
      "

      }
                      

    result = mg_client.send_message(ENV["MAILGUN_DOMAIN"], message_params).to_h!

    message_id = result['id']
    message = result['message']
  end 

end