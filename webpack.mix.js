const mix = require('laravel-mix');
const { sweetAlert } = require('sweetalert2/dist/sweetalert2.all');

/*
 |--------------------------------------------------------------------------
 | Mix Asset Management
 |--------------------------------------------------------------------------
 |
 | Mix provides a clean, fluent API for defining some Webpack build steps
 | for your Laravel application. By default, we are compiling the Sass
 | file for the application as well as bundling up all the JS files.
 |
 */

mix.js('resources/js/app.js', 'public/js')
    .sass('resources/sass/app.scss', 'public/css');

// // pushjs
mix.copy('node_modules/push.js/bin/push.js',
    'public/js/push.js');
mix.copy('node_modules/push.js/bin/serviceWorker.min.js',
    'public/js/serviceWorker.js');
// sweetAlert
mix.copy('node_modules/sweetalert2/dist/sweetalert2.all.min.js', 'public/js/sweetalert2.all.min.js')
mix.copy('node_modules/sweetalert2/dist/sweetalert2.min.css', 'public/css/sweetalert2.min.css')