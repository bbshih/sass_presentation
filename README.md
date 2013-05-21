# Billy Explains Sass

Presentation for @codefellowsorg - follow along if you like:

    git clone git@github.com:bbshih/sass_presentation.git

## SASS = Syntactically Awesome Stylesheets
TL;DR Sass is an extension of CSS3 that adds on features that programming languages have that CSS lacks. These features make it easier to write and manage CSS.

Features of Sass:
  - Variables
  - Nesting
  - Mixins
  - Selector inheritance

Sass has 2 syntaxes:
  - Indented syntax(.sass) - Similar to Haml
  - SCSS(.scss) - Uses CSS semantics, so CSS is valid SCSS (I'll be using this in the demo)

## How to install

    gem install compass
Also installs Sass, but you may have Sass in your Gemfile already too.


Rename your application.css to application.css.scss to change it into a Sass file.

To use compass, add to your application.css.scss file:

    @import "compass"

**To add compass to an existing project**

    Install compass

Then in your Gemfile, inside 'group :assets' block, add:

    gem 'compass-rails'

Then rename your application.css and add the import as mentioned above.

## Follow along the presentation

    git clone git@github.com:bbshih/sass_presentation.git

Open up this file: /app/assets/stylesheets/application.css.scss

## Summary

Sass uses:

- Variables:
  - Create a variable by using _$name_ and assign value with a :. e.g. $highlight: #ff0000;
  - Supports 4 data types: numbers (and units), strings, colors and booleans
- Nesting
  - Place child styles within a parent for better organization and readability
- Mixins
  - A selection of code that contains any valid Sass code. Whenever the mixin is called, it is inserted into the location
  - Define by using @mixin name {} and then calling @include name
- Arguments
  - You can give a mixin an argument to customize the mixin code
  - #mixin name($argument) {
    border-width: $argument
  }
  - @include name(value)
- Selector inheritance
  - Use CSS of another selector by usng @extend selectorname

