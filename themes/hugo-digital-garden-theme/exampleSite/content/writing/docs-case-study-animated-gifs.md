---
Title: 'Balsamiq Docs Case Study, Part 2: Animated GIFs Pause and Play'
Draft: false
Summary: 'Learn how to play and pause animated GIFs on static sites such as Hugo on GitHub from Leon Barnard, Designer and Writer at Balsamiq.'
Tags: ['docs']
Link: '//docslikecode.com/articles/balsamiq-case-study-part-2/'
Date: 2017-04-09
Source: 'Docs Like Code'
Img: '/rogerjones-wireframe.jpg'
---

In a very different challenge from [our first one](../balsamiq-docs-case-study--part-1--multiple-product-versions), we noticed that our support team was getting great feedback when they would send animated GIFs to customers to explain solutions to problems they were having. The classic case of “show, don’t tell.” We realized that adding them to our documentation could be helpful too, and we added a few of them in the first version of our docs.

But it can be distracting to read an article when there’s an endlessly-looping animation in your line of sight. But if you only play it once, readers could miss it.

I came across several sites that gave users an option to play the animated GIF when they clicked on it and I thought that would be great for our docs.

I found a great jquery plugin that I wanted to use called [**gifplayer**](https://rubentd.com/gifplayer/).

![You know you want to click](/gifplayer.png)

There was just one problem. Markdown. Again.

Triggering the gifplayer code is as easy as adding a CSS class to an image. Like this:

    <img class="gif" src="https://rubentd.com/img/banana.png">
    

But native Markdown doesn’t support adding CSS. Of course, Markdown _does_ support inline HTML, and we _could_ have just written HTML whenever we wanted to add an animated GIF. But, again, **I’m stubborn**. I like my Markdown to be clean. I didn’t want to go down a slippery slope of adding special cases for departing from pure Markdown.

Now, there are two parameters that you give an image in Markdown: the file name, which I needed to tell it where the file is, and alt text, which we often leave blank (I know… accessibility). So I decided to customize the jquery function that initialized gifplayer. Instead of looking for images with a CSS class called ‘gif’, it would look for images with alt text set to ‘gif’.

Like this:

    <script>
      $(document).ready(function(){
        $("img[alt='gif']").gifplayer({ label: 'Play' });
    	});
    </script>
    

So, now, if we write:

    ![gif](https://rubentd.com/img/banana.png)
    

it triggers the `gifplayer` script!

![](/banadance.gif)

Sorry, we didn’t implement the pause/play capability on this site, so that banana is gonna keep on dancing.