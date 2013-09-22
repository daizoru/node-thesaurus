
# Thesaurus

*a thesaurus of english words*

## License

99.9999% of this library being made of words from MyThes, the open-office thesaurus, see the LICENSE.txt at the root of the project.

## Usage

### Basic usage

```Javascript
var thesaurus = require("thesaurus");
console.log(thesaurus.find("cheese"));
// returns a list of words:
[ 'dairy product',
  'food',
  'tall mallow',
  'high mallow',
  'cheeseflower',
  'Malva sylvestris',
  'mallow',
  'discontinue',
  'stop',
  'cease',
  'give up',
  'quit',
  'lay off',
  'spool' ]
```

### Import an OpenOffice thesaurus file

expect a th_en_US_new.dat that you can get at http://lingucomponent.openoffice.org/MyThes-1.zip

```Javascript
var thesaurus = require("thesaurus");
var updated_thesaurus = thesaurus.load("./th_en_US_new.dat");
# TODO you can't save it yet.. but you can export the resulting JSON using:
console.log(updated_thesaurus.toJson());
```
