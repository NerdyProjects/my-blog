bundle exec jekyll build
scp -r _site/* immanuel.kanthaus.online:blog/htdocs
