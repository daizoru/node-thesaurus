fs = require 'fs'

class Thesaurus
  constructor: (@database={}) ->
  
  load: (inputFile) ->
    input = fs.readFileSync inputFile, "utf8"
    current =
      meanings: 0
      word: undefined

    for line in input.split('\n')[1...]
      columns = line.split '|'
      if current.meanings is 0
        current.word = columns[0]
        current.meanings = (Number) columns[1]
        @database[current.word] = []
      else 
        --current.meanings
        for syn in columns[1...]
          continue if !syn? or syn is ""
          syn = syn.trim()
          continue if syn in @database[current.word]
          @database[current.word].push syn 
    @
  
  find: (key) -> @database[key] ? []
  get: -> @database
  toJson: -> JSON.stringify @database, undefined, 2

module.exports = new Thesaurus require './th_en_US_new'