gulp = require "gulp"
jade = require "gulp-jade"
sass = require "gulp-sass"

gulp.task "jade", ->
  gulp
  .src "jade_templates/**.jade"
  .pipe jade()
  .pipe gulp.dest "./"

gulp.task "watch", ->
  gulp.watch "jade_templates/**.jade", ["jade"]
