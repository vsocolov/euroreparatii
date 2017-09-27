module.exports = function (grunt) {
    'use strict';

    grunt.initConfig({
        pkg: grunt.file.readJSON('package.json'),
        jshint: {
            dev: [
                'Gruntfile.js',
                './src/main/webapp/resources/js/*.js'
            ]
        },

        sass: {
            dev: {
                files: {
                    './src/main/webapp/resources/css/site.css': './src/main/webapp/resources/css/scss/site.scss'
                }
            }
        },
        cssmin: {
            dev: {
                files: {
                    './src/main/webapp/resources/css/site.min.css': ['./src/main/webapp/resources/css/site.css'],
                    './src/main/webapp/resources/css/third-party/slick.min.css':
                        [
                            './src/main/webapp/resources/css/third-party/slick.css',
                            './src/main/webapp/resources/css/third-party/slick-theme.css'
                        ]
                }
            }
        },
        uglify: {
            dev: {
                files: {
                    './src/main/webapp/resources/js/min/index.min.js': './src/main/webapp/resources/js/index.js',
                    './src/main/webapp/resources/js/min/calculator.min.js': './src/main/webapp/resources/js/calculator.js',
                    './src/main/webapp/resources/js/min/reparation.min.js': './src/main/webapp/resources/js/reparation.js',
                    './src/main/webapp/resources/js/min/gallery.min.js': './src/main/webapp/resources/js/gallery.js',
                    './src/main/webapp/resources/js/min/designProject.min.js': './src/main/webapp/resources/js/designProject.js',
                    './src/main/webapp/resources/js/min/contacts.min.js': './src/main/webapp/resources/js/contacts.js',
                    './src/main/webapp/resources/js/min/design.min.js': './src/main/webapp/resources/js/design.js'
                }
            }
        }
    });

    grunt.loadNpmTasks('grunt-contrib-jshint');
    grunt.loadNpmTasks('grunt-sass');
    grunt.loadNpmTasks('grunt-contrib-cssmin');
    grunt.loadNpmTasks('grunt-contrib-uglify');

    grunt.registerTask('default', ['jshint:dev', 'sass:dev', 'cssmin:dev', 'uglify:dev']);
};