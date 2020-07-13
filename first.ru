require 'rack'

my_server = Proc.new do
    [200, {'Content-Type'=> 'text/html'}, ['<em>Hello</em>','<h1>What</h1>']]
end

run my_server