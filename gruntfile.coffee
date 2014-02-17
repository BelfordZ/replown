module.exports = (grunt) ->
    grunt.initConfig(
        watch:
            all:
                files: ['src/lib/**/*', 'src/spec/**/*']
                tasks: ['coffeelint', 'coffee:compile']

        coffee:
            compile:
                files: [{
                    expand: true
                    flatten: false
                    cwd: 'src/'
                    src: ['**/*.coffee']
                    dest: 'build/'
                    ext: '.js'
                }]

        coffeelint:
            options:
                max_line_length:
                    level: 'ignore'

            lib: ['src/lib/**/*.coffee']
            spec:
                files:
                    src: ['src/spec/**/*.coffee']
    )

    grunt.loadNpmTasks('grunt-contrib-coffee')
    grunt.loadNpmTasks('grunt-coffeelint')
    grunt.loadNpmTasks('grunt-contrib-watch')

    grunt.registerTask('default', ['coffeelint'])
