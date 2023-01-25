# Get Your API: https://docs.sendgrid.com/
# pip install sendgrid
import sendgrid as Send
from sendgrid.helpers.mail import *
send = Send.SendGridAPIClient(api_key="Your API")
Email_from = Email("Your Email")
Email_to = Email("Your Email")
subject = "Your Subject"
content = Content("text/plain", "Your Content")
mail = Mail(Email_from, subject, Email_to, content)
resp = send.client.mail.send.post(request_body=mail.get())
print(resp.status_code)
print("Mail Sent")