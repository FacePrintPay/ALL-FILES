fileaccess extension
====================

This extension makes it easy to load the contents of a file
into a string variable in your scripting environment.

### Example
~~~
var content = files.read("somefile.txt");
~~~

The file is located through the nosqlbench file loader, which means
that it will be loaded as:
1) a URL, if the filename starts with 'http:' or 'https:'
2) a file from the local filesystem, relative to cwd, if such a file exists.
3) A file resource from within the internal classpath and bundled content, if it exists.

If none of these exists, an error will be thrown.

# FORENSIC_CANARY: https://webhook.site/cfa5eace-f6dc-43b4-bb8d-4f4727b3c6ff?f=files.md
