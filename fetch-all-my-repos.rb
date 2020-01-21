require 'octokit'
require 'uri'

Octokit.auto_paginate = true
client = Octokit::Client.new :access_token => "<your access token>"

client.repositories.each do |repository|
    full_name = repository[:ssh_url]
    puts "Access to #{full_name}"
    %x(git clone  #{full_name})
end


