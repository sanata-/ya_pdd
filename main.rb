#!/usr/bin/ruby

require 'curb'
require 'json'
require './conf.rb'

# create new_domain
token     = @token
domain    = @domain
login     = @login
password  = @password

http = Curl.post("https://pddimp.yandex.ru/api2/admin/email/add", {
	:domain   => domain, 
	:login    => login, 
	:password => password
} ) do|http|
  http.headers['PddToken'] = token
end

puts http.body_str

