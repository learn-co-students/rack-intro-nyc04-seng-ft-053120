require 'rack'

class MyServer # something that responds to .call
  def call(env)
    return [ 200, { 'Content-Type' => 'text/HTML' }, pretty_response ]
  end

  def pretty_response
    (Time.now.to_i % 2).zero? ? ["<em>Hello</em>"] : ["<strong>Hello</strong>" ]
    # will either print an emphasized Hello or a strong Hello depending on if the time is "even" or "odd"
  end
end

run MyServer.new