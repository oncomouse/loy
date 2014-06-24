# Mina Loy Online

This repository is the source code of [Mina Loy Online](http://oncomouse.github.io/loy). The site was made using [Middleman](http://middlemanapp.com/), a static site generator. The HTML for the poems was written in Markdown and the CSS that does the formatting was written in SASS.

## Installation

To get this running, you will need a copy of Ruby and a version greater than 1.9 (I believe). If you don't have that (OSX still ships with Ruby 1.8, I believe), I would recommend installing [RVM](https://rvm.io/) (which I would recommend doing anyway, if you are interested in developing in Ruby). After installing a working Ruby, you will need to run the command ```gem install bundler``` to install Bundler. From there run the following in a terminal:

``` bash
> bundle install

> middleman
```

At this point, you can point your browser to [http://localhost:4567](http://localhost:4567) to see the website.
