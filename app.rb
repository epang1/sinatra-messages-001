class MessagesApp < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    @messages = Message.all
    @body_class = "messages"

    erb :messages
  end

  post '/' do
    request.body.rewind
    params = JSON.parse(request.body.read)
    to = params["to"]
    from = params["from"]
    content = params["content"]
    binding.pry
    message = Message.new(to: to, from: from, content: content)
    binding.pry
    message.save
    {message: "OK"}.to_json
  end

end