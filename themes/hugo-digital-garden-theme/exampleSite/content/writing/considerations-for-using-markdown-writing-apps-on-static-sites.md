---
Title: 'Considerations for Using Markdown Writing Apps on Static Sites'
Draft: false
Summary: 'If you use a static site generator, you might find yourself writing a lot of Markdown. And the more you write it, the more you want the tooling experience to fade so the content takes focus.'
Tags: ['web']
Link: '//css-tricks.com/considerations-for-using-markdown-writing-apps-on-static-sites/'
Date: 2021-10-06
Source: 'CSS-Tricks'
Img: '/css-tricks.jpg'
---

If you run or have recently switched to a [static site generator](https://serverless.css-tricks.com/services/ssgs), you probably write a lot of [Markdown](https://css-tricks.com/probably-blog-markdown/). 

I’m going to give you some options (including my favorite), but more importantly, I’ll walk though features that these apps offer that are especially relevant when choosing. Here are some key considerations for Markdown editing apps to help the words flow.

## Consideration #1: Separate writing and reading modes

UX principles tell us that [modes are problematic](https://www.nngroup.com/articles/modes/). But perhaps there is an exception for text editing software. From vi(m) to Google Docs, separate modes for writing and reading seem to appeal to writers. Similarly, many Markdown editors have separate modes or views for writing, editing and reading.

I happen to like Markdown editors that provide a side-by-side or paned design where I can see both at once. Writing Markdown is not the same as writing code. What it looks like matters, and having a preview can give you a feel for that. It’s kind of like static site generators that auto-refresh so that you can see your changes as you make them.

![](/csstricks-1.png)

Having both edit and preview mode active at once can help you feel more connected to the finished product.

In contrast, I’m not a fan of the _one-mode-to-rule-them-all_ design where Markdown formatting automatically converts to styled text, hiding the formatted code (implemented in some form by [Dropbox Paper](https://paper.dropbox.com), [Typora](https://typora.io/), [Ulysses](https://ulysses.app/), and [Bear](https://bear.app)). I can’t stand the work of futzing with the app to change a heading level, for example. _Do I click it, double-click, triple-click? What if I’m just using the keyboard?_

It’s not so much that these features aren’t useful, it’s that they break my flow.

I want to see all the Markdown that I’ve written, even if the end user won’t. That’s one thing that I _do_ want a Markdown editor to borrow from code editors.

## Consideration #2: Good themes

Some Markdown editors allow full customization of editor themes, while others ship with nice ones out of the box. Regardless, I think a good editor should have _just the right amount_ of styling to differentiate plain text from formatted text, but not so much that it distracts you from being able to read it and focus on the content. Even with the preview pane open, I typically spend most of my time looking at the editing view.

### Different colors for each style

Since most of the text in the editor isn’t going to be rendered as it would in the browser, it’s nice to quickly see which text you’ve formatted using Markdown. This helps you determine, for example, whether a URL is actually written out in the text or is used inside a hyperlink. So, I like to have a different color for each Markdown style (headings, links, bold, italic, quotes, images, code, bullets, etc.)

![](/csstricks-2.png)

Colors tell you which text has Markdown formatting applied.

### Apply bold and italics styles too

I prefer to use asterisks for Markdown formatting everywhere I’m able to (e.g., bold, italics, and unordered lists), so I find it helpful to have extra styling beyond color to distinguish bold, italic, and bold+italic. When skimming it can be hard to differentiate between `**this is important**` and `*this is important*`, whereas `****this is important****` and `*_this is important_*` are easier to separate. It also helps me see if I’ve accidentally mismatched asterisks (e.g., `**is this important?*`).

### Different font sizes for each heading level

This might be a bit controversial and may split the audience. Code editors don’t show different font sizes within a file. Colors and styles, sure, but not sizes. But, for me, it helps.

When writing, [hierarchy](https://balsamiq.com/learn/articles/visual-hierarchy-and-alignment/) is the key to organization. With different font sizes for each heading, you can see the outline of whatever you’re writing just by skimming through it.

![](/csstricks-3.png)

Seeing the headings in different font sizes is a subtle way to help you visualize the structure. This is especially helpful for long content.

### Shortcuts and smart keyboard behaviors

I expect all the standard shortcuts that work in a text editor to work. CTRL/CMD + B for bold, I for italic, etc., as well as some that are nice-to-have when writing articles, in particular CTRL/CMD + (number) for headings. CTRL/CMD + 1 for H1, etc.

![](/csstricks-4.gif)

Making something into a heading should be a simple shortcut.

But there are also some keyboard behaviors I like that are borrowed from code editors. For example, if I select some text and press `[` or `(` it won’t overwrite that text, but, instead, enclose it with the opening and closing character. Same for using text formatting characters like `*`, `` ` ``, and `_`.

![](/csstricks-5.gif)

A good Markdown editor won’t overwrite your text when you select it and press a valid Markdown formatting character.

I also rely on keyboard shortcuts to create links and images. Even after more than five years of writing Markdown on a regular basis, I still sometimes forget whether the brackets or parentheses comes first. So, I really like having a handy shortcut to insert them correctly.

Even better, in some editors, if you have a URL in your clipboard and you select text then use a keyboard shortcut to make it into a link, it will insert the URL in the hyperlink field. This has really sped up my workflow.

![](/csstricks-6.gif)

When I have a URL in the clipboard and use the create link shortcut, it assumes that’s what I want to link to. Handy!

### Bonus feature: Copy to HTML

The editor that I use most often has a one-click “Copy HTML” feature (with keyboard shortcut) that takes all of the Markdown I’ve written and copies the HTML to the clipboard. This can be very convenient when using an online editor (e.g., WordPress) that has a code/source option.

![](/csstricks-7.png)

Easy peasy!

## Consideration #3: Stand-alone editor vs. CMS/IDE plugin

I know that a lot of people who work with static site generators love their IDEs and may even jump back and forth between code and Markdown in a single day. I often do. So I can see why using a familiar IDE would be more attractive than having a separate app for Markdown.

But when I’m sitting down to write a page in Markdown or an article, where I’m focusing on the text itself, I prefer a separate app.

I’m not fanatical about using standalone Markdown editors over IDE editor or plugins; I use one occasionally for complex find-and-replace tasks and other edits. As long as it offers the benefits listed above, I wouldn’t try to talk anyone out of it.

Here are a few reasons why a standalone app might work better for writing:

*   **Cleaner interface.** I’m not someone who needs “Zen mode” in my writing app, but I do like to have as few panels open as possible when I’m writing, which typically requires turning a lot of things off in an IDE.
*   **Performance.** Most Markdown tools just feel lighter to me. They are certainly less complex and do less stuff, so they _should_ be faster. I don’t ever want to feel like my writing app is exerting any effort. It should launch fast and respond instantly, always.
*   **Availability.** I just haven’t found a Markdown editor in an IDE that I really like. Perhaps there is one out there; I just don’t have time to try them all. But I _like_ most standalone Markdown editors that I’ve used, and I can’t say the same for what I’ve tried in IDE-land.
*   **Mental shift.** When I open my IDE, I’m thinking about writing code, but when I open my Markdown editor, I’m thinking about writing words. I like that it gets me into the right mindset.

That’s a few too many choices.

## My favorite Markdown editors for writing

While these are my top picks, it doesn’t mean that if an app _isn’t_ on this list that it’s bad. There are several good apps that I didn’t mention because they had too many features or were too expensive given the number of decent free or cheap options. And similar to IDE packages, there are a ton of Markdown apps out there and I haven’t tried them all (but I have tried a lot of them!).

A note about features that help you get “into the zone,” such as “typewriter” or “focus” modes, or soothing background music. They’ve never really worked for me and I eventually turn them off, so they aren’t a feature that I go looking for. (Although if you are into those, you can try [Typora](https://typora.io), which is free (during Beta) and runs on Mac, Windows, and Linux.)

### My top choice

{{< row >}}
{{< column >}}
![](/macdown-logo-bigger.png)
{{< /column >}}
{{< column >}}
#### [**MacDown**](https://macdown.uranusjr.com)
*Free; Mac*

Meets all the criteria listed above. It’s light and snappy, and open source.

A good, similar alternative for Windows and Linux is [**Ghostwriter**](https://wereturtle.github.io/ghostwriter/) (also free).
{{< /column >}}
{{< /row >}}



### Honorable mentions

{{< row >}}
{{< column >}}
#### [**Lightpaper**](https://getlightpaper.com)
![](/lightpaper-logo.png)

*$15; Mac*  
Good for if you want just a bit more functionality. It adds a third pane so that you can easily switch between your files and folders.
{{< /column >}}
{{< column >}}
#### [**Obsidian**](https://obsidian.md)
![](/obsidian-logo.png)

*Free for personal use; Mac, Windows, Linux*  
For a more full-featured app, the editor interface is pretty good, and meets most of the criteria mentioned above. [Zettlr](https://www.zettlr.com/) offers similar features, but just feels more complicated, IMO.
{{< /column >}}
{{< /row >}}

{{< row >}}
{{< column >}}
#### [**Byword**](https://bywordapp.com)
![](/byword-logo.png)

*$11; Mac, iOS*  
Not my favorite app for writing and editing text, but it has the nice added ability to publish to various platforms (e.g., Medium, WordPress, Tumblr, Blogger, and Evernote).
{{< /column >}}
{{< column >}}
#### [**Bear**](https://bear.app)
![](/bear-logo.png)

*Free or $1.49/mo. for Pro version; Mac, iOS*  
A good choice if you use Markdown for more than just site content (personal notes, task management, etc.). Scores high in appearance and usability, too.
{{< /column >}}
{{< /row >}}

## Summary

With Markdown syntax being supported in more and more places — including Slack, GitHub, WordPress, etc. — it is quickly becoming a _lingua franca_ for richer communication in our increasingly text-based lives. It’s here to stay because it’s not only easy to learn and use, it’s intuitive. And luckily we’re currently spoiled for choice when it comes to quality Markdown writing apps.