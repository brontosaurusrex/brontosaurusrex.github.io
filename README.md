a blog this is.

Local preview (no internet needed after dependencies are installed):

```sh
./bin/blog serve
```

Open http://127.0.0.1:4000. Changes rebuild automatically; stop with Ctrl+C.
Include drafts with `./bin/blog serve --drafts`.

Build static files into `_site/`:

```sh
./bin/blog build
```

Ruby, its development headers, GCC, and Make are required. Dependencies are
installed locally in `vendor/bundle/`, which is ignored by Git. To reinstall
using the cached gems, run `./bin/blog install --local`. On this machine,
Bundler is also installed in `vendor/bundle/`; the wrapper sets its gem path.
The wrapper uses `Gemfile.local` and `_config.local.yml`, leaving the original
GitHub dependency lockfile and site configuration unchanged.

External links, embedded videos, and other remotely hosted content still need
internet access. The blog itself builds and serves locally.
