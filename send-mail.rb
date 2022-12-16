require "sendgrid-ruby"
include sendgrid

from = Sendgrid::Email.new(email: "sigmatconsultancy@gmail.com")
to = SendGrid::Email.new(email: "manjusathyam842@gmail.com")
subject = "dfsdk klsdjlksf klsjlkf"
content = SendGrid::Content.new(type: "text/plain", value: "dcdj kdfld wkjflwe")
mail = SendGrid::Mail.new(from, subject, to, content)

sg = SendGrid::API.new(api_key: ENV["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"])
response = sg.client.mail._("send").post(request_body: mail.to_json)

puts response.status_code
puts response.body
puts response.headers
