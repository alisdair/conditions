# Conditions

[![Build Status](https://travis-ci.org/alisdair/conditions.png?branch=master)](https://travis-ci.org/alisdair/conditions)

Simple web application to allow reporting of course conditions at my golf club.

Scalable UI with giant buttons to make it super easy to use on smartphones and tablets.

![Report form](http://f.cl.ly/items/2Y3d3r1Z3F3T1F1r2W0y/report.png)
&nbsp;
![Thanks!](http://f.cl.ly/items/3n0j2J2L0p1M2Y14152E/thanks.png)

Exposes the data as a simple table view, an embeddable `iframe`, and an Atom feed for posting to [Twitter](http://twitter.com/lenziegolfclub) using [IFTTT](http://ifttt.com/).

## Usage

Set up the environment:

1. Check out the repository.
2. Install gems: `bundle install`
3. Run specs: `bundle exec rake spec`

### Mac OS X and pow

[pow](http://pow.cx/) is my preferred development setup.

1. Set up pow: `ln -s $PWD ~/.pow/conditions`
2. Open in a browser: http://conditions.dev/

### Alternative: foreman

Unfortunately pow is not available on Linux or Windows. In that case, or if you don't want to use pow, try using [foreman](http://ddollar.github.io/foreman/):

1. Set up the .env file: `cp env.development .env`
2. Run `bundle exec foreman start`
3. Open in a browser: http://localhost:3000/

## License

MIT.
