Mactag::Config.binary = '/usr/local/Cellar/ctags/5.8/bin/ctags -e -o {OUTPUT} {INPUT}'

Mactag do
  app 'app/**/*.rb', 'lib/*.rb'
  gems
  rails
end
