Bix::Application.boot(:persistence) do |app|
  start do
    container = ROM.container(:sql, app['db.connection']) do |config|
      config.auto_registration(app.root + "lib/bix")
    end
    register('container', container)
  end
end
