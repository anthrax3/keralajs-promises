# Generated on 2013-10-23 using generator-reveal 0.2.0
module.exports = (grunt) ->

    grunt.initConfig

        watch:

            livereload:
                options:
                    livereload: true
                files: [
                    'index.html',
                    'slides/*.md',
                    'slides/*.html',
                    'js/*.js'
                ]

            index:
                files: [
                    'index.tpl',
                    'slides/list.json'
                ]
                tasks: ['build:index']

            coffeelint:
                files: ['Gruntfile.coffee']
                tasks: ['coffeelint']

            jshint:
                files: ['js/*.js']
                tasks: ['jshint']

        connect:

            livereload:
                options:
                    port: 9000
                    # Change hostname to '0.0.0.0' to access
                    # the server from outside.
                    hostname: 'localhost'
                    base: '.'
                    open: true
                    livereload: true

        coffeelint:

            options:
                indentation:
                    value: 4

            files: ['Gruntfile.coffee']

        jshint:

            options:
                jshintrc: '.jshintrc'

            files: ['js/*.js']

        copy:

            dist:

                files: [
                    expand: true
                    dot: true
                    dest: 'dist/'
                    src: [
                        'bower_components/reveal.js/lib/css/zenburn.css',
                        'bower_components/reveal.js/css/theme/default.css',
                        'bower_components/reveal.js/css/reveal.min.css',

                        'bower_components/jquery/jquery.js',
                        'bower_components/handlebars/handlebars.js',
                        'bower_components/reveal.js/lib/js/head.min.js',
                        'bower_components/reveal.js/js/reveal.min.js',

                        'bower_components/reveal.js/lib/js/classList.js',
                        'bower_components/reveal.js/plugin/markdown/marked.js',
                        'bower_components/reveal.js/plugin/markdown/markdown.js',
                        'bower_components/reveal.js/plugin/highlight/highlight.js',
                        'bower_components/reveal.js/plugin/zoom-js/zoom.js',
                        'bower_components/reveal.js/plugin/notes/notes.js',
                        'js/loadtemplates.js',

                        'bower_components/reveal.js/lib/font/*',
                        'js/*.js',
                        'images/{,*/}*.{webp,gif}',
                        'slides/*.{html,md,json}',
                        'index.html',
                        'images/*.{png,jpg,jpeg}'
                    ]
                ]


    # Load all grunt tasks.
    require('load-grunt-tasks')(grunt)

    grunt.registerTask 'publish', [ 'copy']

    grunt.registerTask 'build:index',
        'Build index.html from index.tpl and slides/list.json.',
        ->
            template = grunt.file.read 'index.tpl'
            slides = grunt.file.readJSON 'slides/list.json'
            html = grunt.template.process template, data:
                slides:
                    slides
            grunt.file.write 'index.html', html

    grunt.registerTask 'server',
        'Run presentation locally and start watch process (living document).', [
            'build:index',
            'connect:livereload',
            'watch'
        ]

    # Define default task.
    grunt.registerTask 'default', [
        'coffeelint',
        'jshint',
        'build:index',
        'connect:livereload',
        'watch'
    ]
