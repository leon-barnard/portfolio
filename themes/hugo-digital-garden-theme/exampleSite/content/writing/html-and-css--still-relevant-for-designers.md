---
Title: 'HTML and CSS: Still Relevant for Designers'
Draft: false
Summary: 'Knowing only HTML and CSS will still get you far as a designer, and can give you all the qualifications you need to meet the new bar for designers.'
Tags: ['web', 'favorite']
Link: '//blog.teamtreehouse.com/html-css-still-relevant-designers-2016'
Date: 2016-02-16
Source: 'Treehouse Blog'
Img: '/htmlandcsshot.jpg'
---

If you’re a designer trying to stay current you may be feeling some pressure to learn one of the many new web programming languages that are “hot” right now (React, [Angular](https://teamtreehouse.com/library/angular-basics), etc.). Not only because these languages are gaining in popularity, but because the bar for design jobs seems to be getting higher.

Many companies are advertising for “Full Stack” designers, those who can do UI and UX design, _and_ write code. You may also have read one of the many articles out there about why designers should learn to code.

But before you hand over your time and money for a class in React or some other evolution of [JavaScript](http://teamtreehouse.com/learn/javascript), read on. Because, in my experience, **knowing only [HTML](http://teamtreehouse.com/learn/html) and [CSS](http://teamtreehouse.com/learn/css) will still get you far as a designer**, and can give you all the qualifications you need to meet the new bar for designers.

Here are five reasons why.

1. HTML and CSS Are Design Tools
2. HTML Is What the Browser Knows
3. CSS3 Is Replacing JavaScript as the Language of Animation on the Web
4. Wireframes with CSS Are Better than a Photoshop Mockup
5. At the Very Least, You Can Customize a Web Framework

1\. HTML and CSS _Are_ Design Tools
-----------------------------------

Shhh…don’t tell anyone, but HTML and CSS aren’t _really_ programming languages. They don’t compile. If there’s an error in your HTML or CSS, the browser just skips it, or does its best to show what it thinks you meant. There are no `if-then` statements. You can’t send a satellite into orbit with HTML and CSS.

**HTML and CSS are rules for styling and structuring content.** That’s it.

And, _they’re not that hard_ (except vertically centering in CSS – _yes, that’s a CSS joke_). They’re actually pretty cool.

> "HTML is not a programming language; it is a markup language"  
> Take this all the "I am a programmer I know HTML" guys…
> 
> — B Ł-ski (@YoggyShoggoth) [November 27, 2015](https://twitter.com/YoggyShoggoth/status/670262882106519552?ref_src=twsrc%5Etfw)

Furthermore, [HTML5](https://www.w3.org/TR/html5/) and [CSS3](https://developer.mozilla.org/en-US/docs/Web/CSS/CSS3) are great improvements over previous versions. The HTML5 specification, in particular, has done a lot to add meaningful structure to web content, eliminating the need for ugly `<DIV>` tags everywhere.

Finally, know HTML and CSS and your developers will thank you. Most developers can’t really be bothered to know the ins and outs of it (especially CSS).

One [employer recently wrote](https://www.smashingmagazine.com/2016/01/web-development-reading-list-121/) “nearly no one could show off substantial markup skills,” after reviewing front-end developer candidate applications.

He continued:

> Many are not able to choose the right HTML elements, to explain why and how a clearfix works, or what ARIA roles are for, but they can use React and Angular. If you got some spare time over the next weeks, learn semantics and re-read the basics (or specs if you like the challenge) of HTML and CSS from time to time.

This creates a vacuum of skills that _you_ can be there to fill! So, let your developers spend their time on _real_ programming while you focus on the HTML and CSS.

2\. HTML Is What the Browser Knows
----------------------------------

Don’t be intimidated. React and others are languages that must ultimately output HTML. The browser doesn’t know React, it knows HTML. So that’s what has to be there eventually.

This means that you can still work _with_ a developer in React, without having to “know” it.

Let’s look at some code from the official [React tutorial](http://facebook.github.io/react/docs/tutorial.html).

```
  // tutorial1.js
  var CommentBox = React.createClass({
  render: function() {
    return (
      <div className="commentBox">
        Hello, world! I am a CommentBox.
        </div>
        );
      }
      });
  ReactDOM.render(
    <CommentBox />,
    document.getElementById('content')
    );
```          

See everything in that `return` block? That’s HTML. The only thing you need to switch in your brain is that “className” means CSS class. That’s it. You can essentially ignore the rest and write the HTML and CSS for your developer without needing to code anything in React.

![HTML and CSS: So Hot Right Now](/htmlandcsshot.jpg)

Even when it gets [a little more complicated](http://facebook.github.io/react/docs/tutorial.html#using-props)…

```
// tutorial4.js
var Comment = React.createClass({
  render: function() {
    return (
      <div className="comment">
        <h2 className="commentAuthor">
          {this.props.author}
        </h2>
        {this.props.children}
      </div>
    );
  }
});
```

What’s “`{this.props.author}`“? Well, some kind of content goes there. Ask your developer what it is. You just design around it.

Let’s take a look at another common web language, [PHP](http://teamtreehouse.com/learn/php). Designing a [WordPress](http://teamtreehouse.com/learn/wordpress) theme? Your [header](https://codex.wordpress.org/Designing_Headers) might look something like this:

```
<div id="header">
 <div id="headerimg">
   <h1>
    <a href="<?php echo get_option('home'); ?>">
       <?php bloginfo('name'); ?></a>
   </h1>
     <div class="description">
       <?php bloginfo('description'); ?>
     </div>
  </div>
</div>
```

Technically, that’s a PHP page, but it’s mostly HTML. Again, it’s code that writes HTML. If you know CSS and HTML, you can probably figure out 80-90% of PHP, especially if you’re starting from an existing template.

“Knowing” a programming language isn’t all or nothing. Knowing HTML and CSS well can actually help you communicate in other languages just fine. It’s like visiting France after taking one year of French. It’s enough to get by, and a lot better than nothing!

3\. CSS3 Is Replacing JavaScript as the Language of Animation on the Web
------------------------------------------------------------------------

Ok, I lied a little bit when I said that HTML and CSS aren’t real programming languages. Some of the new stuff is starting to get kind of programming language-y. CSS animations in particular. But if you really want to level up your skills without learning a whole new language, CSS animation is a great place to start.

[Val Head](http://valhead.com/), CSS animation guru, wrote an article called [“UI Animation and UX: A Not-So-Secret Friendship”](http://alistapart.com/article/ui-animation-and-ux-a-not-so-secret-friendship) in which she explains why, and how, the domain of CSS animation can belong to designers.

With the [death of Flash](https://blogs.adobe.com/conversations/2015/11/flash-html5-and-open-web-standards.html) and the [power of CSS3 animation properties](http://www.w3schools.com/css/css3_animations.asp), CSS is where it’s at for animation right now. And, probably not coincidentally, animation and motion design are _the_ thing for designers to be working on right now. So leverage your existing CSS skills and get into the animation game!

4\. Wireframes with CSS Are Better than a Photoshop Mockup
----------------------------------------------------------

If you’re in a more traditional environment where developers work from visual specifications or pixel-perfect comps, you’ve probably run into issues where the design details in the mockups need to be interpreted into code.

This might be in the form of questions like:

_“How many pixels is the padding here?”_

_“What’s the `border-radius` value for this button?”_

If the developers have to translate what you’ve created in Photoshop or Sketch into CSS properties, you might as well just give them the actual CSS properties. Why waste time getting your design comp pixel perfect if the developers are going to have to make a bunch of guesses when they implement it?

I’ve had a lot of success [creating rough wireframes that give developers enough to get started](https://blogs.balsamiq.com/ux/2013/02/06/using-mockups-in-your-agile-user-stories/), and then supplementing with actual CSS code once they’ve built a functioning prototype. You don’t need to specify everything all at once or in the same document.

This also frees up developers from thinking about the CSS, which, as we learned above, is probably just fine with them!

5\. At the Very Least, You Can Customize a Web Framework
--------------------------------------------------------

If you work on a web product, there’s a good chance your developers use [**Bootstrap**](https://getbootstrap.com/), or something like it. If so, you can put your CSS skills to use and take ownership of the design by [customizing](https://getbootstrap.com/customize/) the framework theme. You can also start with one of the [many](https://themes.getbootstrap.com/) [custom](https://bootswatch.com/) [themes](http://startbootstrap.com/) [out there](https://wrapbootstrap.com/).

By separating features from appearance, developers can code independently of the design team, yet give the design team control over what the customer sees.

A hybrid of this technique and the one above, [Using Wireframes with Pattern Libraries and Frameworks](https://blogs.balsamiq.com/ux/2014/08/06/using-balsamiq-mockups-with-pattern-libraries-and-frameworks/), is also effective.

Conclusion
----------

An interesting thread appeared on the [UX Mastery forums](http://community.uxmastery.com/) recently entitled [“Busting myths about a career in UX”](http://community.uxmastery.com/forum/careers/7359-busting-myths-about-a-career-in-ux).

The discussion [kicked off](http://community.uxmastery.com/forum/careers/7359-busting-myths-about-a-career-in-ux#post7359) with “The one that I hear the most is that being able to write code is a pre-requisite.” I’ve encountered this myth many times in my career. The same poster ended with “If you want to learn, _a basic knowledge of HTML and CSS would be a good place to start_.”

If you’re a designer concerned that you “only” know HTML and CSS, or you _want_ to be a designer and are looking to make yourself marketable, you don’t necessarily need to learn a complex programming language. HTML and CSS – “ancient” by technology standards, yet tried and true – are as integral to the web as they’ve ever been, and a powerful tool in the modern designer’s arsenal.

Now go out there and use your skills with pride!
