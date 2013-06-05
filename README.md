# ICE Code Editor

[![Build Status](https://drone.io/github.com/eee-c/ice-code-editor/status.png)](https://drone.io/github.com/eee-c/ice-code-editor/latest)

The Code Editor + Visualization Preview used in the book “[3D Game Programming for Kids](http://gamingjs.com).”

![ICE Code Editor Screenshoot](ice_code_editor.png)

This is an attempt to convert the JavaScript version ([repository](https://github.com/eee-c/code-editor) / [live version](http://gamingjs.com/ice)) to Dart. The JavaScript version is a pain to maintain. I hope to leverage the benefits of Dart (cross-browser support, testing, documentation) by doing this.

## Running the Example App

The example app contained in `example` is a simple Dart web server. From the `example` directory, run the web server with `dart app.dart`, then open `http://localhost:8000` in Dartium. You should see a simple ACE Editor embedded in the page.

## Features

 * Update button — (60% done, needs toggle auto-update feature)
 * Hide Code button — hides code (0% done)
 * Main Menu button
   * Open (90% done, needs CSS work)
   * New (50% done, needs template)
   * Make a Copy (100% done)
   * Save (100% done)
   * Rename (100% done)
   * Share (50% done, needs shortener)
   * Download (0% done)
   * Remove (100% done)
   * Help (100% done)

## Core Collaborators

 * [Santiago Arias](https://github.com/santiaago)
 * [Srdjan Pejic](http://batasrki.github.io/)

## Contributors

 * [Kate Bladow](https://github.com/kbladow)
 * [Stephen Cagle](https://github.com/samedhi)
 * [Damon Douglas](https://github.com/damondouglas)
 * [William Estoque](https://github.com/westoque)
 * [Daniel Gempesaw](https://github.com/gempesaw)
 * [Anita Kuno](https://github.com/anteaya)
 * [Morgan Nelson](https://github.com/korishev)
 * [Michael Risse](https://github.com/rissem)

## Want to Help?

[![#pairwithme](http://www.pairprogramwith.me/badge.png)](https://www.google.com/calendar/selfsched?sstoken=UUNwdmNwR09IRm4wfGRlZmF1bHR8NmVjZjU2MGY0MzU4MTBlMjFkZTE0ZDgzYjdkMGU4ZjM)

Chris ([twitter](https://twitter.com/eee_c) / [blog](http://japhr.blogspot.com/)) runs nightly (1030pm EDT / 0230 UTC) pairing sessions. [Sign up for free](https://www.google.com/calendar/selfsched?sstoken=UUNwdmNwR09IRm4wfGRlZmF1bHR8NmVjZjU2MGY0MzU4MTBlMjFkZTE0ZDgzYjdkMGU4ZjM) to help out and learn some [Dart](http://dartlang.org)! _Absolutely no experience required. Really :)_
