# Billy explains SASS
## Syntactically Awesome Stylesheets ##
Sass is an extension of CSS3 that adds on features that programming languages have that CSS lacks. These features make it easier to write and manage CSS.

Sass has 2 syntaxes:

  - Indented syntax - Similar to Haml
  - SCSS - Uses CSS semantics, so CSS is valid SCSS (I'll be using this in the demo)
  - Follow along: git clone git@github.com:bbshih/sass_presentation.git

  - Provides the following mechanisms
    - Variables
    - Nesting
    - Mixins
    - Selector inheritance
- Variables
  - Being with a $ sign and assign value with a :
  - Supports 4 data types: numbers (and units), strings, colors and booleans
- Nesting
  - Allows you to nest code for better organization and readability
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
- Install
- http://thesassway.com/beginner/getting-started-with-sass-and-compass
  - gem install sass
  - Found in gemfile:
    - gem 'sass-rails',   '~> 3.2.3'
  - gem install compass will install sass too
  - gem install css_parser
    - Allows use of 'compass stats' which outputs a "report that gives a count of the Sass rules, properties, mixins defined and mixins used as well as the CSS rules and properties that get output from your Sass-stylesheets."

- Install compass
  - In 'group :assets do' add: gem 'compass-rails'
  - add .scss to application.css
    - Add @import "compass"
