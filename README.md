
# Thesaurus

*a thesaurus of any languages using LibreOffice's dictionaries*

## License

99.9999% of this library being made of words from MyThes, the open-office thesaurus, see the LICENSE.txt at the root of the project.

## Usage

### Basic usage

```Javascript
var thesaurus = require("thesaurus");

// basically returns a list of similar words
console.log(thesaurus.find("structuralism"));
[ 'structural linguistics',
  'linguistics',
  'structural anthropology',
  'theory',
  'structural sociology' ]

// please be aware that all meanings are merged into the same list.
// this is not a semantic thesaurus.
console.log(thesaurus.find("constitutional"));
[ 'law',
  'property',
  'constitutional',
  'built-in',
  'inbuilt',
  'inherent',
  'integral',
  'intrinsic',
  'intrinsical',
  'constituent',
  'constitutive',
  'organic',
  'essential',
  'walk' ]
```

### Import an OpenOffice thesaurus file

expect a th_en_US_new.dat that you can get at http://lingucomponent.openoffice.org/MyThes-1.zip

```Javascript
var thesaurus = require("thesaurus");

// import the file, add (or update) the words. This function extends the preloaded English Thesaurus Dictionary. For using the loaded one only, use "replace" function instead.
var updated_thesaurus = thesaurus.load("./th_en_US_new.dat");

// TODO you can't save it yet.. but you can export the resulting JSON using:
console.log(updated_thesaurus.toJson());

// to clear the internal dictionary
thesaurus.reset()

// to replace the loaded dictionary by one loaded from the given thesaurus dat file.(reset and load) 
thesaurus.replace("./th_en_US_new.dat")
```
