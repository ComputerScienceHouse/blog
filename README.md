# CSH Blog

## Installation
* Clone this repo
* Run `bundle install` to install dependencies
* Run `bundle exec jekyll serve` to generate and run site
* The blog is now running at `http://127.0.0.1:4000/`!

## Posting
* Fork this repo
* Locally, and after installation, make a new file in `_posts/`
  * Title the file `YYYY-MM-DD-your-title-here.md` (i.e. `2017-10-23-hello-world.md`)
  * Fill in the YAML Front Matter at the top of the file, as detailed [below](#post-format)
  * Below the Front Matter, write the body of the post, in Markdown
* Push the new file(s) to your fork, and make a Pull Request to this repo

### Post Format
    ---
    layout: post
    title: ""
    date: 
    categories:
    description: 
    image: 
    image-sm:
    author: 
    author-image: 
    author-bio: 
    ---