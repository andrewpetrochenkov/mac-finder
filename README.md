<!--
https://readme42.com
-->



[![](https://img.shields.io/badge/OS-macOS-blue.svg?longCache=True)]()
[![](https://img.shields.io/pypi/v/mac-finder.svg?maxAge=3600)](https://pypi.org/project/mac-finder/)
[![](https://img.shields.io/npm/v/mac-finder.svg?maxAge=3600)](https://www.npmjs.com/package/mac-finder)[![](https://img.shields.io/badge/License-Unlicense-blue.svg?longCache=True)](https://unlicense.org/)
[![](https://github.com/andrewp-as-is/mac-finder/workflows/tests42/badge.svg)](https://github.com/andrewp-as-is/mac-finder/actions)

### Installation
```bash
$ [sudo] pip install mac-finder
```

```bash
$ [sudo] npm i -g mac-finder
```

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

frontmost (`1` or `0`)
```bash
$ finder-frontmost
0
```

<p align="center">
    <a href="https://readme42.com/">readme42.com</a>
</p>
