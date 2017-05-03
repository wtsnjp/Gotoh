# Package Gotoh (v1.0)

[![Build Status](https://travis-ci.org/wtsnjp/Gotoh.svg?branch=master)](https://travis-ci.org/wtsnjp/Gotoh)

This package calculates biological sequence alignment with the Gotoh algorithm. The package also provide the interface to control various settings including algorithm parameters.

## System Requirements

* TeX format: LaTeX2e
* TeX engine: any engine
* Document class: any class
* Prerequisite package: xkeyval

## Installation

To install the package, interpret the `gotoh.ins` file with LaTeX.

```
latex gotoh.ins
```

Then move the files as follows (in a system compliant to TDS 1.1).

* `*.sty`: $TEXMF/tex/latex/gotoh/
* `*.dtx`, `*.ins`: $TEXMF/source/latex/gotoh/
* `*.pdf`, `*.tex`: $TEXMF/doc/latex/gotoh/

And rehash your TEXMF trees if necessary.

## License

This package is distributed under [the MIT license](./LICENSE).

---

Takuto ASAKURA ([wtsnjp](https://twitter.com/wtsnjp))