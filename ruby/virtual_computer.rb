#!/usr/bin/ruby

class Computer
    @@users = {}
    def initialize(username, password)
        @username = username
        @password = password
        @files = {}
        @@users[username] = password
    end
    
    def create(filename)
        time = Time.now
        @files[filename] = time
        puts "#{filename} was created at #{time} by #{@username}"
    end
    
    def Computer.get_users
        @@users
    end
end

my_computer = Computer.new("KiV", "fcfc")
my_computer.create("ruby")
Computer.get_users