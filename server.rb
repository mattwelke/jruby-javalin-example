require 'java' 
require 'jruby/core_ext'
require 'bundler/setup' 
require 'awesome_print'
Bundler.require

java_import 'io.javalin.Javalin'

class Person
end

p = Person.new

app = Javalin.create.start 7000
app.get '/' do |ctx|
  res = { hello: 'world' }
  ctx.json res
end
