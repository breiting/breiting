#!/usr/bin/env ruby

mailboxes = []
Dir.chdir(ENV['HOME'] + '/Maildir') do
  Dir['{reecon,robotic,live}/*'].each do |d|
    mailboxes << %{"+#{d}"}
  end
end
File.open(ENV['HOME'] + '/.mutt/config/mailboxes.mutt', 'w') do |f|
  f.puts "mailboxes #{mailboxes.join(' ')}"
end
