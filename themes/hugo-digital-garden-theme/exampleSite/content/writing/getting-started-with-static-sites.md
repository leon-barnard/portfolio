---
Title: 'Getting Started with Static Sites'
Draft: false
Summary: 'You may have heard the buzz about so-called &quot;static&quot; websites. In this post we&#039;ll tell you what they are, what&#039;s the big deal, and what you need to know to build one.'
Tags: ['web', 'favorite']
Link: '//blog.teamtreehouse.com/getting-started-static-sites'
Date: 2016-06-21
Source: 'Treehouse Blog'
Img: '/static-diagram.png'
---

The First Static Sites
----------------------

In the [early years of the web](http://bgr.com/2015/07/24/1990s-websites-abandoned-still-running/), when [HTML](http://teamtreehouse.com/learn/html) was the only language for making websites, all sites were “static,” consisting of a simple hand-off of text and image files between a network server and a program on your computer. Opening a website was essentially just viewing files on someone else’s computer.

This was fine when sites were small and looked like this:

![Space Jam website](/space-jam-website.jpg)  
(_[Source](http://www.warnerbros.com/archive/spacejam/movie/jam.htm)_)

But because websites consisted of files that linked to other files, whenever web developers wanted to add a page, change a link, or rename something they had to edit each file that referenced the file to be changed. As sites got increasingly complex this became untenable.

### Enter Server-Side Languages

To reduce this manual effort, software designed to run on network servers was created. This software could interpret powerful new web languages, such as CGI, ASP, and PHP, and output them to HTML that the browser could read.

[PHP](https://blog.teamtreehouse.com/what-is-php) is one of the most popular _[server-side](http://www.codeconquest.com/website/client-side-vs-server-side/)_ languages today. It can do many things that HTML can’t, like include the content of one file inside another or perform mathematical calculations.

The trade-off is that when you write a website in PHP, the code you upload to the server needs to be _translated_ into HTML before it can be shown to the reader (since [HTML is what the browser knows](https://blog.teamtreehouse.com/html-css-still-relevant-designers-2016)).

Here is an example of what happens when you view a WordPress site (which relies on PHP):

![](/31-02_php_scheme.png)  
(_[Source](https://minewebdesign.wordpress.com/2013/06/01/workflow-of-php/)_)

Instead of HTML, the PHP file on the server looks something like this:

    <?php 
    $x = "Hello world!";
    $y = 'Hello world!';
    
    echo $x;
    echo "<br>"; 
    echo $y;
    ?>
    

The web server translates it to HTML before sending it to the browser. This takes longer than if the server just had plain HTML pages on it.

_**Related Reading:**_ [Should I Learn HTML Before Python?](https://blog.teamtreehouse.com/should-i-learn-html-before-python)

Why Static Sites Are Back
-------------------------

One reason that static sites have re-emerged is because [JavaScript](http://teamtreehouse.com/learn/javascript) (which doesn’t need to be interpreted by the server) is taking over many of the duties that server-side languages used to provide. Thanks to frameworks like [jQuery](https://teamtreehouse.com/library/jquery-basics), [Angular](https://teamtreehouse.com/library/angular-basics), and [React](https://facebook.github.io/react/), **today’s “static” pages can do a lot of very dynamic things** (our [contact us page](https://balsamiq.com/company/contact/), for example, is a static page created using React).

But the main difference between today’s static sites and the original static sites of the 90s is the existence of new **static site generators** (which I’ll explain below) that perform a translation step similar to server-side software, but that happens _before_ uploading, resulting in static files on the server.

Static site files require no translation processing from the server, so they can be handed over to the web browser on your computer (a.k.a. the client) **as-is**, which is **fast and uncomplicated**.

There’s a [bit more to it](http://nilclass.com/courses/what-is-a-static-website/), but let’s jump right into how to create a static site.

What You Need to Create a Static Site
-------------------------------------

To create a static site you should have a basic knowledge HTML and CSS, and **be open to learning a few new tools**.

The static site workflow looks like this:

![](/static-diagram.png)

There are three main components:

1.  **A Markup Language**
2.  **A Style Language**
3.  **A Processing Tool (a.k.a. “Generator”)**

Each component has several options, but the general workflow should be pretty much the same.

### Markup Languages

Wait, you say, isn’t HTML _the_ markup language for the web? Yes, but with static site generators you can use a variety of markup languages that are compiled (converted) to HTML. You can think of these languages as a kind of shorthand for HTML.

There are two main reasons why you would use a markup language other than HTML:

1.  You want something more powerful (akin to a server-side language)
2.  You want something that’s easier to write and/or read

Let’s look at one that gives you both, called [Jade](http://jade-lang.com/).

In Jade, you can write this:

    doctype html
    html(lang="en")
      head
        title= pageTitle
      body
        h1 Jade - node template engine
        #container.col
          if youAreUsingJade
            p You are amazing
          else
            p Get on it!
          p.
            Jade is a terse and simple
            templating language with a
            strong focus on performance
            and powerful features.

Instead of this:

    <!DOCTYPE html>
    <html lang="en">
      <head>
        <title>Jade</title>
      </head>
      <body>
        <h1>Jade - node template engine</h1>
        <div id="container" class="col">
          <p>You are amazing</p>
          <p>
            Jade is a terse and simple
            templating language with a
            strong focus on performance
            and powerful features.
          </p>
        </div>
      </body>
    </html>

Notice that it doesn’t require the HTML-style angle brackets (e.g., <tag></tag>). It relies on the indentation hierarchy to determine which elements contain others. This makes it more compact and easy to read.

Also, in the example above there is an if-else statement, like those found in server-side programming languages. Not shown is the ability include (“extend”) one Jade file in another. Both of these are things that plain HTML can’t do.

Other languages that are similar include [HAML](http://haml.info/), [Slim](http://slim-lang.com/), and [EJS](http://ejs.co/).

Another popular language for writing simple HTML is [Markdown](https://daringfireball.net/projects/markdown/) (which I used to write this post). It looks like this:

    # this is a big heading
    
    this is a regular paragraph of text with a [link](http://example.com).
    
    here is a list:
    
    * item one
    * item two
    

It’s important to note that Markdown is not a complete replacement for HTML like Jade and HAML are. Markdown is mostly for the **content part of your HTML** file, the stuff that goes inside the <body> tags.

Markdown is best for blog posts, documentation articles, and other content that is mostly text. If you use Markdown you’ll probably also need to create some “templates” using a language like [Liquid](https://github.com/Shopify/liquid/wiki) or [Handlebars](http://handlebarsjs.com/). These templates provide the structure around the content that the Markdown goes into.

In summary, markup languages like those listed above provide the following advantages over HTML:

*   Ability to insert references to other files
*   Templates for common page types
*   Simplified syntax for better readability

### Style Languages

Similar to the HTML variations listed above, CSS has its own alternatives that extend the basic functionality of CSS for added power and flexibility. Fortunately, there are fewer options here.

The two most used are [**SASS**](http://sass-lang.com/) and [**Less**](http://lesscss.org/). They are quite similar. We’ll use SASS in the examples.

The benefits and features are similar to markup languages. The ability to use variables is especially useful. You can define all your colors and fonts as variables, for example, so that updating them is a snap. A few other CSS-specific benefits are automatic [browser prefixing](http://webdesign.about.com/od/css/a/css-vendor-prefixes.htm) and [minification](https://en.wikipedia.org/wiki/Minification_(programming)) and [concatenation](https://en.wikipedia.org/wiki/Concatenation) of files.

Variables in SASS look like this:

    $font-stack: Helvetica, sans-serif;
    $primary-color: #333;
    
    body {
      font: 100% $font-stack;
      color: $primary-color;
    }

Which becomes this:

    body {
      font: 100% Helvetica, sans-serif;
      color: #333;
    }

Whenever you want to change the font and color you can just change the property of the variable. This can save a ton of time for large sites.

There are many more things that SASS can do. [Learn SASS on Treehouse](https://teamtreehouse.com/library/sass-basics).

### The Generator

Now to the thing that brings them all together. For this you’ll need to install a program on your computer to translate the markup and style code you write into HTML and CSS.

Some popular generators are [Jekyll](http://jekyllrb.com/), [Hugo](http://gohugo.io/), [Harp](https://harpjs.com/), and [Hammer](http://hammerformac.com/index.html).

There are a few considerations, such as:

*   What markup and style languages do you want to write in (not all generators support all languages)
*   The size of your site (affects how long compiling takes)
*   The type of website you’re building (Jekyll and Hugo are optimized for blogs, for example)
*   How comfortable you are with running terminal commands from a command line (many require them. Some, like [Hammer](http://hammerformac.com/index.html), don’t.)

Static site generators typically **run in the background while you write** your markup and styles and compile to HTML and CSS when you save. You often don’t interact with them except to start and stop them.

![Hugo running in the terminal](/hugo-terminal.png)  
(_[Hugo](http://gohugo.io/) running in the terminal_)

Many also create a local web server (with a URL like “http://localhost:1234”) so that you can preview your site on your computer before uploading it.

Some text editors even have plugins (like this [SASS plugin for Atom](https://atom.io/packages/sass-autocompile)) that compile markup and style languages as you write, so you could even get away with not using a separate generator.

_(For more on using Jekyll to create a blog, see this [in-depth tutorial](https://www.smashingmagazine.com/2014/08/build-blog-jekyll-github-pages/).)_

### Hosting

The final piece of the puzzle is finding a place to put your files on the web.

Good news! Hosting your static site on the web is probably easier than hosting a dynamic site. There are no requirements for the server to be running certain software (like PHP) or even have a specific operating system. This often means that hosting is cheaper, or even free, because the resources needed are fewer. If you already have a host that you like, you don’t need to change anything.

If you don’t already host your site somewhere, I suggest reading [Using GitHub Pages To Host Your Website](https://blog.teamtreehouse.com/using-github-pages-to-host-your-website). Putting your files on GitHub allows you to track all the changes you make to your site and doesn’t require FTP. [Amazon S3](https://aws.amazon.com/s3/) is another popular option for static sites.

_**Also read:**_ [Creating Static Pages in Ruby on Rails](https://blog.teamtreehouse.com/static-pages-ruby-rails)

Static vs. Dynamic: Which is Better For You?
--------------------------------------------

As with most things, the answer is that **it depends**.

Here are some pros and cons of static sites.

Pros:

*   Static websites generally load faster
*   Newer markup languages can be easier to write once you take the time to learn them
*   Fewer web server requirements and lower hosting costs

Cons:

*   A bit of a learning curve even if you’re already familiar with HTML and CSS
*   Transitioning from an existing site can be a challenge ([some tips here](http://konigi.com/blog/hello-hugo/))
*   Unclear which new technologies will continue to be supported in the long term

Regardless, these new technologies highlight a continuing trend toward lower barriers to entry for web developers. Languages like Jade and Markdown and technologies like GitHub facilitate more intuitive code writing and easier collaboration for the web.

Static sites may not revolutionize the web, but they are clearly an evolution of it. Hopefully this post has helped you to understand their basic principles and context. Your comments are welcome!

(_Many thanks to [Peldi](https://balsamiq.com/company/#peldi) and [Stefano](https://balsamiq.com/company/#stefano) for the technical review!_)
