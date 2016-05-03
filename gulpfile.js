var gulp = require('gulp'),
    watch = require('gulp-watch'),
    exec = require('child_process').exec;
gulp.task('default', ['serve'], function () {
    watch(['index.ios.js', 'index.android.js', 'src/**/*.js'], {
            usePolling: true
        },
        function (vinyl) {
            exec('chmod +x ' + vinyl.path, function () {
                console.log(vinyl.path + ' updated');
            });
        });

});
