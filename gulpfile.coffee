gulp =            require 'gulp'
coffee =          require 'gulp-coffee'
concat =          require 'gulp-concat'
gutil =           require 'gulp-util'
del =             require 'del'
browserify =      require 'browserify'
watchify =        require 'watchify'
source =          require 'vinyl-source-stream'
bower =           require 'main-bower-files'

paths =
  public:         './public'
  scripts:        './client/coffee'
  vendor:         './vendor'

files =
  html:           './client/assets/index.html'
  app:
    js:           'application.js'
  vendor:
    js:           'vendor.js'

args = watchify.args
args.extensions = ['.coffee']

bundler = watchify(browserify './client/coffee/application.coffee', args)
bundler.transform 'coffeeify'

bundle = ->
  bundler.bundle()
    .on 'error', gutil.log.bind(gutil, 'Browserify Error')
    .pipe source(files.app.js)
    .pipe gulp.dest(paths.public)

bundler.on 'update', bundle

gulp.task 'scripts', bundle

gulp.task 'vendor', ->
  gulp.src bower()
    .pipe concat(files.vendor.js)
    .pipe gulp.dest(paths.public)

gulp.task 'html', ->
  gulp.src files.html
    .pipe gulp.dest(paths.public)

gulp.task 'watch', ->
  gulp.watch paths.scripts, ['scripts']
  gulp.watch paths.vendor, ['vendor']
  gulp.watch paths.html, ['html']

gulp.task 'default', ['watch', 'html', 'scripts', 'vendor']
