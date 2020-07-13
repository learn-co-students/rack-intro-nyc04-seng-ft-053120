require 'rack'

my_server = Proc.new do
    [200, { 'Content-Type' => 'text/html' },
['<em>Helloa Francisco this is the begining of your coding carreer. Good Luck!</em']]
end


run my_server