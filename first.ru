require 'rack'  
#instances of Proc automatically have a call method that runs the block 
# They're initialized with 
my_server = Proc.new do 
    [200,{'Content-Type' => 'text/html'}, ['<em>Hello</em>']]
end

run my_server