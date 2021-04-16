'use strict'

const gulp = require('gulp');
const sass = require('gulp-sass');

//sass
gulp.task('sass', function (done) {
    gulp.src(['src/*.scss'])
        .pipe(sass({outputStyle: 'compressed'}))
        .pipe(gulp.dest('../../web/'));
    done();
});
