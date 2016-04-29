var gulp = require('gulp'),
    watch = require('gulp-watch'),
    exec = require('child_process').exec;
gulp.task('default', function () {
    var write = false;
    watch(['index.ios.js'], {
            usePolling: true
        },
        function () {
            console.log('start file updated');
            write = true;
            exec('chmod +x index.ios.js', function(){
                console.log('file updated');
            });
        });

});
