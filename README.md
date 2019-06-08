<!--
https://pypi.org/project/readme-generator/
https://pypi.org/project/python-readme-generator/
-->

[![](https://img.shields.io/badge/OS-macOS-blue.svg?longCache=True)]()
[![](https://img.shields.io/badge/language-AppleScript-blue.svg?longCache=True)]()
[![](https://img.shields.io/pypi/v/mac-finder.svg?maxAge=3600)](https://pypi.org/project/mac-finder/)
[![](https://img.shields.io/npm/v/mac-finder.svg?maxAge=3600)](https://www.npmjs.com/package/mac-finder)
[![Travis](https://api.travis-ci.org/looking-for-a-job/mac-finder.svg?branch=master)](https://travis-ci.org/looking-for-a-job/mac-finder/)

#### Installation
```bash
$ [sudo] npm i -g mac-finder
```
```bash
$ [sudo] pip install mac-finder
```

#### Scripts usage
command|`usage`
-|-
`finder` |`usage: finder command [args]`
[`finder-alias`](# "create Finder alias") |`usage: finder-alias source target`
[`finder-close-bg`](# "close background windows") |`usage: finder-close-bg`
[`finder-close-duplicates`](# "close duplicates") |`usage: finder-close-duplicates`
[`finder-comment`](# "read/write Finder comment") |`usage: finder-comment path [comment]`
[`finder-exec`](# "execute command from every selected Finder directory") |`usage: finder-exec command [args ...]`
[`finder-icon`](# "set Finder item icon") |`usage: finder-icon path image`
[`finder-reveal`](# "reveal the path in the Finder. 'open -R' replacement") |`usage: finder-reveal path`
[`finder-selection`](# "Finder selection") |`usage: finder-selection`

#### Examples
create Finder alias
```bash
$ finder-alias ~/Downloads ~/Downloads2
```

read/write Finder comment
```bash
$ finder-comment path "comment value"
$ finder-comment path
comment value
```

set Finder icon
```bash
$ finder-icon path image.png
```


```bash
$ finder-reveal ~/git
```

get Finder selection
```bash
$ finder-selection
/Users/username/Desktop
/Users/username/Downloads
```

execute command from every selected Finder directory
```bash
$ finder-exec python setup.py install
```

<p align="center">
    <a href="https://pypi.org/project/python-readme-generator/">python-readme-generator</a>
</p>