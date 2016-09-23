Second Middleman Site
====================

This is my second [Middleman](https://middlemanapp.com/) site. It was built using Middleman 4.1.10.

The following are some tweaks that I had to make from my [first Middleman site](https://bitbucket.org/speedy1812/fig) to get things to work.

* Put ".html" before ".erb" for webpage files (layout and yml files don't need ".html".
* Swap out "all" for "site" in layout file.
* Add gem '"mime-types", "~> 3.0"' to Gemfile.

One other thing that I ran into was that S3 gave me grief about the region when I tried to put the code in a bucket in the Oregon region. When I switched to a US Standard bucket, it worked great.
