"""import smtplib

def send_email(from_addr,to_addrs, email_subject, email_body):
  for i in to_addrs:
    SMTP.sendmail(from_addr,i,email_subject,email_body)

server=smtplib.SMTP('kwh.evan@gmail.com', 587)
to_addrs=['evanosekai@gmail.com','buklau450@gmail.com']
email_subject=input('Please input email subject:')
email_body=input('Please input email body:')
send_email(server,to_addrs,email_subject,email_body)"""

import smtplib

def send_email(from_addr, to_addrs, email_subject, email_body):
    server = smtplib.SMTP('smtp.gmail.com', 587)
    server.starttls()
    server.login('your_email@gmail.com', 'your_password')
    for addr in to_addrs:
        msg = f"Subject: {email_subject}\n\n{email_body}"
        server.sendmail(from_addr, addr, msg)
    server.quit()

from_addr = 'your_email@gmail.com'
to_addrs = ['evanosekai@gmail.com', 'buklau450@gmail.com']
email_subject = input('Please input email subject:')
email_body = input('Please input email body:')
send_email(from_addr, to_addrs, email_subject, email_body)
