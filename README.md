# view-finder

## Description
Open view partials from a live rails site into your favorite text editor. 

Only TextMate is supported right now with the uri (txmt://) on a Mac . (Pull requests welcome for getting your favorite editor configured)

## Idea Motivation
A project spans across many developers across many months. Some developers use their own convention for partials and some times partials, or even sometimes its your code you wrote couple of months back. Its painfully slow to jump through files and you might not want to dig deep for the right partial doing the job of displaying the information.

## DISCLAIMER / NOTE
* Make sure this gem is not included in the environment where you are exposing the site to public since this would reveal the filenames which you are using.
* I am not responsible when using of this gem causes any kind of loss or exposing filenames from within the project.

## Setting up(read the DISCLAIMER first before setting up the gem)
* Include `gem 'view-finder', group: :development, git: 'https://github.com/sairam/view_finder.git'` in Gemfile to only allow this gem in development mode (see the DISCLAIMER on why I stress about only using it in development mode)
* Run `bundle install` to pull the gem.

### When Asset Pipeline is enabled
* Include `view_finder` in application.js (When asset pipeline is enabled)

### When Asset Pipeline is not enabled *(not supported yet)*
* Run `rails g view_finder g:install` to copy from the static javascripts to public/ directory

## Make *it* work (will be provided with a UI element to be toggled)
* Open the javascript console and type in `window.openFileMode=true` and click on any element and it opens the partial file in textmate. 
* To stop the opening files type in `window.openFileMode=false` 

## Works with 
* Rails 3+ (with asset pipeline enabled)
* Tested with Chrome

## Upgrading
### Required only when Asset Pipeline is enabled *(not supported yet)*
* Run `rails g view_finder g:install` to copy from the static javascripts to public/ directory

## TODO
# See Footnotes::Filter.prefix = 'mvim://open?url=file://%s&line=%d&column=%d'. Add support for vim . https://github.com/josevalim/rails-footnotes
