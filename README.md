# Learn Sass + Compass Quick

Lightning talk for [Code Fellows](http://www.codefellows.org) - [Slides](http://www.slideshare.net/billyshih/learn-sass-and-compass-quick-21581469) and notes below and following demo can be followed by installing compass, cloning the repo and then opening the application.css.scss file.

    gem install compass
    git clone git@github.com:bbshih/sass_presentation.git
    cd sass_presentation
    rake db:migrate db:test:prepare
    subl /app/assets/stylesheets/application.css.scss

Start a rails server and load localhost:3000 in the browser.

## SASS = Syntactically Awesome Stylesheets
TL;DR Sass is an extension of CSS3 that adds on features that programming languages have that CSS lacks. These features make it easier to write and manage CSS.

### Sass filetypes
Sass has 2 acceptable syntaxes with 2 different file types:
  - Indented syntax(.sass) - Similar to Haml
  - SCSS(.scss) - Uses CSS semantics, so CSS is valid SCSS (I'll be using this in the demo)

Sass has an interpreter that spits out traditional CSS files from the *.scss files you create. You can set a command to monitor whenever you make changes to your .scss file so that you always have the .css file, but with Rails and the Sass gem, it will always automatically generate a .css file for you when you reload the page.

## Compass

[Compass](http://compass-style.org/) is an open-source CSS framework. It utilizes Sass to provide mixins that solve common problems encountered when creating CSS files

## How to install

Add to your Gemfile

    group :assets do
      gem 'sass-rails' # if running rails 3.1 or greater
      gem 'compass-rails'
    end

In your project directory run:

    $ bundle
    $ bundle exec compass init

Rename your application.css to application.css.scss to change it into a Sass file. Then add the import below to the file:

    @import "compass"

Create new .scss files and @import them into the application.css.scss to use them.

Once your ready to push for production use:

    rake assets:precompile

## Extra Notes

### Features of Sass  
**Variables**
 - Create a variable by using _$name_ and assign value with a :.

        $highlight: #ff0000;

 - Supports 4 data types: numbers (and units), strings, colors and booleans

**Nesting**  
 Place child styles within a parent for better organization and readability

**Mixins**
 - A selection of code that contains any valid Sass code. Whenever the mixin is called, it is inserted into the location
 - Define by using @mixin name {} and then calling @include name
 - You can give a mixin an argument to customize the mixin code

        #mixin highlightBox($border_width) {
            border-width: $border_width
            color: blue;
        }
        
        .box {
            @include highlightBox(3px)
            height: 30px;
        }

**Selector inheritance**  
Use CSS of another selector by usng @extend selectorname
