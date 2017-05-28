require "sinatra"
require "sinatra/reloader" if development?

require './lib/cipher_maker'

get '/' do
	erb :index
end