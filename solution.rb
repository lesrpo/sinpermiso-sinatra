require 'sinatra'
require 'rubygems'
require 'net/http'

get '/' do
	#headers['HTTP_PERMISO']== "soy-un-token-secreto"?"Si lo logramos":"Sin permiso"
	# request.headers['PERMISO']
	request.env['HTTP_PERMISO']== "soy-un-token-secreto"?"Si lo logramos!":"Sin Permiso"
end