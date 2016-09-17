[![badge][apm]][package]
[![badge][chat]][#slack]

[_JavaScript for Automation_][jxa] (“JXA”) language support in [Atom]
=====================================================================
Now you can use your favourite editor instead<sup id="R1">[*](#F1)</sup> of Apple's crappy _Script Editor_!

Install
-------
`apm install language-javascript-jxa` or search “jxa” under packages within Atom.

Change Log
----------
[0.2.2] (2016-02-03)
--------------------
#### Add full support for .scpt files ([05eaa51])
Mimic the behaviour of Apple's Script Editor by automatically de/recompiling .scpt files using the native `osacompile`/`osadecompile` utilities.<sup id="R2">[**](#F2)</sup>

[0.1.0] (2015-10-21)
--------------------
#### Initial commit ([4eb40c4])

[0.1.0]:                  https://github.com/danielbayley/atom-language-javascript-jxa/tree/v0.1.0
[05eaa51]:                https://github.com/danielbayley/atom-language-javascript-jxa/commit/05eaa51
[0.2.2]:                  https://github.com/danielbayley/atom-language-javascript-jxa/tree/v0.2.2
[4eb40c4]:                https://github.com/danielbayley/atom-language-javascript-jxa/commit/4eb40c4

---

<a id="F1">[*](#R1)</a> Plays nice with [atom-script] (`apm install script`) to run your code directly (good riddance Script Editor…)

<a id="F2">[**](#R2)</a> See [language-applescript] for AppleScript .scpt files.

License
-------
[MIT] © [Daniel Bayley]

[MIT]:                    LICENSE.md
[Daniel Bayley]:          https://github.com/danielbayley
[atom]:                   https://atom.io
[apm]:                    https://img.shields.io/apm/v/transpile.svg?style=flat-square
[package]:                https://atom.io/packages/language-javascript-jxa
[chat]:                   https://img.shields.io/badge/chat-atom.io%20slack-ff69b4.svg?style=flat-square
[#slack]:                 https://atom-slack.herokuapp.com

[atom-script]:            https://atom.io/packages/script
[language-applescript]:   https://atom.io/packages/language-applescript
[jxa]:                    https://developer.apple.com/library/mac/releasenotes/InterapplicationCommunication/RN-JavaScriptForAutomation/Articles/Introduction.html
