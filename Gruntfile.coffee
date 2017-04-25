'use strict'

module.exports = (grunt) ->
    require('load-grunt-tasks') grunt
    env = process.env.NODE_ENV || 'development'

    grunt.initConfig
        pkg: grunt.file.readJSON('package.json')

        clean:
            dist: ['dist', '.tmp']

        coffee:
            options:
                join: true
            compile:
                files:
                    'dist/assets/js/app.js': [
                        'web/**/*.coffee'
                    ]

        ngconstant:
            options:
                dest: 'dist/assets/js/config.js'
                name: 'yourAppNameConfig'
            development:
                constants:
                    constantString: "constantDevEnvStringToUseInAngularFiles"
            production:
                constants:
                    constantString: "constantProdEnvStringToUseInAngularFiles"

        notify_hooks:
            options:
                success: true

        watch:
            build:
                files: [
                    'web/**/*.coffee'
                    'web/*.coffee'
                ]
                tasks: ['build']

    grunt.registerTask 'build', 'Builds the front end assets', ->
        grunt.task.run 'notify_hooks'
        grunt.task.run 'clean'
        grunt.task.run 'coffee'
        grunt.task.run "ngconstant:#{env}"