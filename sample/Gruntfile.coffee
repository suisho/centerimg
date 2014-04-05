module.exports = (grunt) ->
  require('load-grunt-tasks')(grunt)

  grunt.initConfig
    jade:
      compile:
        files: [
          expand : true,
          src : [
            'jade/**/*.jade'
          ],
          dest : 'public/'
          ext : '.html'
        ]
    stylus:
      compile:
        files: [
          expand : true,
          src : [
            'stylus/**/*.styl'
          ],
          dest : 'public/'
          ext : '.css'
        ]
    bower :
      install :
        options :
          install : true
          cleanTargetDir : true
          cleanBowerDir : false
          layout : 'byType'
    watch :
      all:
        files: ['jade/**/*.jade', 'stylus/*.styl']
        tasks: ["compile"]

  grunt.registerTask 'compile', ['jade', 'stylus',]
  grunt.registerTask 'default', ['compile', 'watch']
