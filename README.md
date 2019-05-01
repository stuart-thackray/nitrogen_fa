# Nitrogen plugin for [Font Awesome](http://fontawesome.io/)

A quick way to include font-awesome incons into nitrogen; small record name; assumes to add "fa fa-"; and no need to specificially state that aria hidden etc. 

This creates a `#fa{}` element for [Nitrogen Web Framework](http://nitrogenproject.com) 

## Installing into a Nitrogen Application

Add it as a rebar dependency by adding into the deps section of rebar.config:

```erlang
{nitrogen_fa, "", {git, "git://github.com/stuart-thackray/nitrogen_fa.git", {branch, master}}}
```

You need to include font awesome CSS/Fonts/etc this can either be done with the below or you can use a [CDN](https://en.wikipedia.org/wiki/Content_delivery_network)

To include the included CSS version (5.8.1) you can include like below in your template
```html
<link rel="stylesheet" href="/plugins/nitrogen_fa/css/all.min.css" type ="text/css" charset="utf-8" media="screen" />

```


### Using Nitrogen's built-in plugin installer 

Run `make` in your Application. 

To include the element add the follwoing include after including the nitrogen lib.

```erlang
-include_lib("nitrogen_fa/include/records.hrl").
```

## Usage
Basic example is provide at
```url
http:\\<YOURIP>:<YOURPORT>\fa_demo
OR JUST 
http://localhost:8000/fa_demo if running locally.
```

You specify an element like below
```erlang
#fa{fa="camera-retro"}
```

There are many additional settings such as sizes/combining with buttons; or using with bootstrap that maybe found at [Fontawesume examples](https://fortawesome.github.io/Font-Awesome/examples/)


## TODO

-[ ] A lot better example/demo page is needed. Currently not displaying as hoping.
