var gulp = require("gulp");
var ts = require("gulp-typescript");
var browserify = require('gulp-browserify');

gulp.task("default", function () {
    return gulp.src("src/*.ts")
        .pipe(
            ts({
                noImplicitAny: true,
                out: "output.js",
            })
        )
        .pipe(browserify({
            insertGlobals: true,
        }))
        .pipe(gulp.dest("built/local"));
});
