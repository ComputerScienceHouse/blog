#!/bin/sh

read -p "Title: " title
read -p "Date [$(date +%Y-%m-%d)]: " date
read -p "Categories (space-separated): " categories
read -p "Description: " description
read -p "Post Image URL (full size): " img
read -p "Post Image URL (smaller): " img_sm
read -p "Author Name: " author_name
read -p "Author Image URL: " author_img
read -p "Author Bio: " author_bio
read -p "Author E-Mail: " author_email
read -p "Author GitHub URL: " author_github
read -p "Author LinkedIn URL: " author_linkedin

if [ -z "$date" ] # Default to current date
then
    date=$(date +%Y-%m-%d)
fi

title_url=$(echo "$title" | tr " " "-" | tr '[:upper:]' '[:lower:]')

function add {
    printf -- "$1\n" >> "_posts/$date-$title_url".md
}

# Append to file
add "---"
add "layout: post"
add "title: $title"
add "date: $date"
add "categories:"
for category in $categories
do
    add "\t- $category"
done
add "description: $description"
add "image: $img"
add "image-sm: $img_sm"
add "author: $author_name"
add "author-image: $author_img"
add "author-bio: $author_bio"
add "author-email: $author_email"
add "author-social:"
add "\tgithub: $author_github"
add "\tlinkedin: $author_linkedin"
add "---\n"
add "Post content goes here!"
