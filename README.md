# dot-only-hunter

[![Build Status][travis-image]][travis-url]
[![npm][npm-image]][npm-url]
[![npm Downloads][downloads-image]][downloads-url]

Hunt down `.only`s before it's too late.

Works with [mocha](mocha), [tape](tape) and any tests written in BDD, TDD and QUnit style.

## Install

```sh
$ npm install --save-dev dot-only-hunter
```

## Usage

```
$ dot-only-hunter -h
Usage: dot-only-hunter [test_dir][options]
  -h, --help            output usage information
  -p, --prey <list>     additional commma-separated list of names to hunt preciding .only

$ dot-only-hunter
dot-only-hunter: test: No such file or directory

$ dot-only-hunter tests
Hunting inside 'tests' for tests with `.only`...
tests/test.js:describe.only('jello-eater', function () {
Whoops! Found `.only` in your tests.

$ rm tests/test.js
$ dot-only-hunter tests
Hunting inside 'tests' for tests with `.only`...
All good!
```

## License

MIT © [David da Silva](http://dasilvacont.in)

[travis-image]: https://travis-ci.org/dasilvacontin/dot-only-hunter.svg?branch=master
[travis-url]: https://travis-ci.org/dasilvacontin/dot-only-hunter
[npm-image]: https://img.shields.io/npm/v/dot-only-hunter.svg?style=flat
[npm-url]: https://npmjs.org/package/dot-only-hunter
[downloads-image]: http://img.shields.io/npm/dm/dot-only-hunter.svg
[downloads-url]: https://www.npmjs.org/package/dot-only-hunter

[mocha]: https://github.com/mochajs/mocha
[tape]: https://github.com/substack/tape
