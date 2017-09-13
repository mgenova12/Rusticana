module ApplyHelper

  def send_email_mailgun
    mg_client = Mailgun::Client.new(ENV["MAILGUN_API_KEY"])

    message_params =  {
      from: 'mgenova03@gmail.com',
      to:   'mgenova03@gmail.com',
      subject: "Rusticana Application",
      html:  "
      <h3> You have a new application from #{@apply[:first_name]} #{@apply[:last_name]} for the position of #{@apply[:position]}.</h3>
        
        <a href='http://localhost:3000/admin_panel'><button>View Application</button></a>
      "



      }
                      

    result = mg_client.send_message(ENV["MAILGUN_DOMAIN"], message_params).to_h!

    message_id = result['id']
    message = result['message']
  end 

end