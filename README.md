# [_JavaScript for Automation_](https://developer.apple.com/library/mac/releasenotes/InterapplicationCommunication/RN-JavaScriptForAutomation/Articles/Introduction.html) ("JXA") language support in [Atom](https://atom.io)

Now you can use your favourite editor instead<sup id="R1">[*](#F1)</sup> of Apple's crappy _Script Editor_!

## Install
`apm install language-javascript-jxa` or search _jxa_ under packages within Atom.

<br>

# Change Log

## [0.2.2](https://github.com/danielbayley/atom-language-javascript-jxa/tree/v0.2.2) (2016-02-03)  

+ #### Add full support for .scpt files ([05eaa51](https://github.com/danielbayley/atom-language-javascript-jxa/commit/05eaa51))

  Mimic the behaviour of Apple's Script Editor by automatically de/recompiling .scpt files using the native `osacompile`/`osadecompile` utilities.<sup id="R2">[**](#F2)</sup>

---

## [0.1.0](https://github.com/danielbayley/atom-language-javascript-jxa/tree/v0.1.0) (2015-10-21)  

+ #### Initial commit ([4eb40c4](https://github.com/danielbayley/atom-language-javascript-jxa/commit/4eb40c4))

  <br>

---

<a id="F1">[*](#R1)</a> Plays nice with [atom-script](https://atom.io/packages/script) (`apm install script`) to run your code directly (good riddance Script Editor…)

<a id="F2">[**](#R2)</a> See [language-applescript](https://atom.io/packages/language-applescript) for AppleScript .scpt files.
