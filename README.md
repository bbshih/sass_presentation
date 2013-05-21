# Learn Sass + Compass in 3 or more minutes

Lightning talk for [Code Fellows](http://www.codefellows.org) - Slides in detailed form are below and following demo can be followed by cloning the repo and then opening the file below and the related .scss file

    /app/assets/stylesheets/application.css.scss

## SASS = Syntactically Awesome Stylesheets
TL;DR Sass is an extension of CSS3 that adds on features that programming languages have that CSS lacks. These features make it easier to write and manage CSS.

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

### Sass filetypes
Sass has 2 acceptable syntaxes with 2 different file types:
  - Indented syntax(.sass) - Similar to Haml
  - SCSS(.scss) - Uses CSS semantics, so CSS is valid SCSS (I'll be using this in the demo)

Sass has an interpreter that spits out traditional CSS files from the *.scss files you create. You can set a command to monitor whenever you make changes to your .scss file so that you always have the .css file, but with Rails and the Sass gem, it will always automatically generate a .css file for you when you reload the page.

## How to install

    gem install compass
This technically installs Compass, but since it requires Sass, it'll install Sass too. It's likely you already have Sass in your Gemfile.

Rename your application.css to application.css.scss to change it into a Sass file.

To use compass, add to your application.css.scss file:

    @import "compass"

**To add compass to an existing project**

    Install compass

Then in your Gemfile, inside 'group :assets' block, add:

    gem 'compass-rails'

Then rename your application.css and add the import as mentioned above.

Once your ready to push for production use:

    rake assets:precompile

## Compass

[Compass](http://compass-style.org/) is an open-source CSS framework. It utilizes Sass to provde you mixins that speed up and make CSS even easier.

## Follow along the presentation

    git clone git@github.com:bbshih/sass_presentation.git

Open up this file: /app/assets/stylesheets/application.css.scss
