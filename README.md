# Opentip Version 2.0.0-dev

The [opentip][opentip]-class is a free opensource Java-Script tooltip class based on the [prototype][prototype] framework.

It supports:

- Stems (little pointers)
- Automatic content download with [AJAX][ajax]
- Different styles
- Automatic repositioning of the tooltip if it's not in the viewport of the browser anymore
- All kind of triggers (The tooltip can be triggered by mouse over, click, form submit,... everything you can think of really)
- CSS3 Animations if available. (If not, it uses scriptaculous if available).

As of Version 2.0 Opentip does no longer depend on Prototype. You can choose
any adapter you want so you can work with the framework of your choice.

Supported frameworks are:

- Native. You can use this one if you don't use any framework.
- [Ender](http://ender.no.de)
- [Prototype](http://prototypejs.org)


> If you want to contribute, please read on in the [contribute](#contribute) section!

## Usage

    <div onmouseover="javascript:Tips.add(this, event, 'Content', { options });"></div>

Or the preferred external method:

	$('elementId').addTip('Content', { options });

For the complete documentation please visit [www.opentip.org][opentip].


## Migrating from Opentip 1.x to 2.x

Those are the major changes you should look out for when migrating from 1.x to 2.x:

- There's no `Tip` or `Tips` object anymore. Everything is done through
  `Opentip`

- The recommend way to create opentips now is to call
  `new Opentip(element, content, title, options)`, or with the framework of
  your choice (eg, ender: `$("#my-div").opentip(content, title options)`)

- The instantiation of new tips inside an event (eg: `onclick`, `onmouseover`)
  is no   longer supported! This would create new opentips everytime the event
  is fired.

- `Opentip.debugging = true;` does no longer exist. Use `Opentip.debug = true;`

- Positions are no longer of the weird form `[ "left", "top" ]` but simply
  strings   like `"top left"` or `"right"`

- `stem.size` has been dropped in favor of `stem.length` and `stem.base`

- Most of the design is now done in JS since the whole thing is a canvas now.

## Future plans

- ~~Become library independant. I'm currently working on
  extracting all prototype functionality, so I can switch library easily. The
  next library   I'll support will be jquery, and then mootools.~~

- Add more skins.

- Add cooler loading animation.

- ~~Implement unit tests.~~


If you have ideas, please contact me!


## Contribute

The latest stable version is always in the **master** branch (which always
points at the latest version tag).

The latest development version is in the **develop** branch. Use only if you
want to contribute or test features.

Opentip is written in [Coffeescript](http://coffeescript.org) so *do not* make
changes in the Javascript files. **I will not pull requests written in Javascript.**

If you add a change, please make sure that all tests pass!

Use `cake` in the source directory to list all commands available.

For example, to watch your changes an compile them:

    $ cd path/to/opentip-source 
    $ cake watch

Beware that you have to do the same thing for the tests:

    $ cd ./test
    $ cake watch

and for the css:

    $ cake watchcss

To run the tests, open `/test/index.html` in the browser.


## Tagging

Tagging in this project is done with my [tag script](http://github.com/enyo/tag).


## Author
Opentip is written by Matias Meno.<br>
All graphics by Tjandra Mayerhold.

### Contributors

Thanks to the following people for providing bug reports, feature requests and fixes:

- Torsten Saam
- Aaron Peckham
- Oguri
- MaxKirillov

If I forgot somebody, please just tell me.

### Related projects

You might also be interested in my [formwatcher](http://www.formwatcher.org/) or
[dropzone](http://www.dropzonejs.com/).

## License
Copyright (c) 2012 Matias Meno<br>
Licenced under the MIT Licence.


[opentip]: http://www.opentip.org/
[prototype]: http://www.prototypejs.org/
[ajax]: http://en.wikipedia.org/wiki/Ajax_(programming)
[excanvas]: http://code.google.com/p/explorercanvas/