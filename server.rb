require 'java' 
require 'jruby/core_ext'
require 'bundler/setup' 
Bundler.require

java_import 'io.javalin.Javalin'

app = Javalin.create.start 7000
app.get '/' do |ctx|
  res = { hello: 'world' }
  ctx.json res
end
