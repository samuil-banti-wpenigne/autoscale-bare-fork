This plugin can be installed to pull pieces of metadata about an install from the wp-json api.

There are a couple strange pieces of behavior:
1. After deploying this plugin, if you modify the routes, make sure to run 'wp cache flush' so that the opcache doesn't store old routes.
1. When testing it is best to skip varnish. You can do so by appending a garbage parameter like (url)/?bust_cache=RANDOM().