require 'rest-client'
require 'json'

puts "Informe seu CEP para verificação!"
cep = gets.chomp.to_i
resp = RestClient.get "https://api.postmon.com.br/v1/cep/#{cep}"

File.open("cep.txt", 'w') do |line|
    line.puts(JSON.parse(resp))
end