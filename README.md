LeetcodeScreenSaver
==================

A macOS screen saver that quizzes you with **random LeetCode problems** while your Mac is idle — turning screen-idle time into algorithm practice. It's a fork of Alastair Tse's [WebViewScreenSaver](http://github.com/liquidx/webviewscreensaver), which renders web pages as a screen saver, customized to pull and cycle through the LeetCode problem set.

How it differs from WebViewScreenSaver
---------------------------------------

The base project displays a user-configured list of URLs. This fork adds LeetCode-specific behavior in `WebViewScreenSaverView.m`:

- On start it calls the LeetCode API (`https://leetcode.com/api/problems/algorithms/`), parses `stat_status_pairs`, and collects the title-slug of every **free** problem (paid-only problems are skipped).
- It then repeatedly picks a random problem and loads `https://leetcode.com/problems/<slug>`, swapping to a new one on a timer (`loadOneProblem`).
- The default address (`WVSSAddress.m`) is set to the LeetCode algorithms problem set.

Like the upstream, the page renders as it would in Safari/WebKit but ignores keyboard and mouse input. It uses AFNetworking (bundled via CocoaPods under `Pods/`) for the API request.

Building
--------

Open `WebViewScreenSaver/WebViewScreenSaver.xcodeproj` (the workspace, since it uses CocoaPods) in Xcode and build the `WebViewScreenSaver` target to produce a `.saver` bundle, then double-click it to install. This is a 2016-era Objective-C project using the deprecated `WebView`; expect it to need migration (and a logged-in LeetCode session in WebKit) to work on a current macOS.

Original WebViewScreenSaver
---------------------------

This fork is built on WebViewScreenSaver by Alastair Tse (<alastair@liquidx.net>, [@liquidx](https://twitter.com/liquidx)), <http://github.com/liquidx/webviewscreensaver>. Its usage instructions and curated example URLs (which still work with the generic build) follow.

A Mac OS X screen saver that displays a web page or a series of web pages. The list of URLs can be set via the "Options..." panel in the Screen Saver settings.

Websites that look good as screensavers:

 - http://www.google.com/trends/hottrends/visualize?pn=p1
 - http://twistori.com/#i_love
 - http://randomstreetview.com/#slideshow
 - http://www.airtightinteractive.com/demos/js/nebula/
 - http://alteredqualia.com/three/examples/webgl_cubes.html
 - http://akirodic.com/p/jellyfish/
 - http://matthew.wagerfield.com/flat-surface-shader/
 - http://spielzeugz.de/html5/liquid-particles.html
 - http://codepen.io/ykob/full/zGpjeK/
