# CSH Blog

## Installation
* Clone this repo
* Run `bundle install` to install dependencies
* Run `bundle exec jekyll serve` to generate and run site
* The blog is now running at `http://127.0.0.1:4000/`!

## Posting
* Fork this repo
* Locally, and after installation, either:
  * Run `sh newPost.sh` and fill in metadata to automatically generate a new post file
    * Fill in the post content, and verify YAML Front Matter **OR:**
  * Make a new file in `_posts/`:
    * Title the file `YYYY-MM-DD-your-title-here.md` (i.e. `2017-10-23-hello-world.md`)
    * Fill in the YAML Front Matter at the top of the file, as detailed [below](#post-format)
    * Below the Front Matter, write the body of the post, in Markdown
* Push the new file(s) to your fork, and make a Pull Request to this repo

### Post Format
```yaml
---
layout: post
title: ""
date: 
categories:
  - 
description: 
image: 
image-sm:
author: 
author-image: 
author-bio: 
author-email: 
author-social:
  github: 
---
```
    
#### Example
```yaml
---
layout: post
title:  Intro to GitHub
date:   2017-10-22 12:25:00
categories: 
  - git
  - GitHub
description: GitHub is an incredible tool, not only for development, but for learning
image: https://devinmatte.github.io/images/posts/intro-to-github/profile.png
image-sm: https://devinmatte.github.io/images/posts/intro-to-github/profile.png
author: Devin Matte
author-image: https://avatars3.githubusercontent.com/u/9310513
author-bio: Second Year Software Engineering Student at Rochester Institute of Technology
author-email: devin@devinmatte.com
author-social:
  github: https://github.com/devinmatte
  linkedin: https://www.linkedin.com/in/devin-m-5556a386/
---
```
