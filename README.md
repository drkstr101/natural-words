# org.agileware.natural.words

Proving grounds for smart text mining in [Natural](https://github.com/rlogiacco/Natural)

This project defines the `Words` language, an Xtext Dsl for processing free form text 
into semantic groups and tokens.

## Goals

The primary goals of this library is to implement a few common patterns that will be
useful in furthering the advancement of the `Cucumber` and `Jbehave` languages defined
by `Natural`. Primarily, it will provide improved localization and autocompletion of
special word groups. Once this has been accomplished, the project inception process 
will begin in order to discover further potential text mining capabilities.

## Features

These are subject to change to until the first demo release, but the current feature
set being worked on is as follows.

1. Provide some common patterns to match: 
	* Sections with `Keyword: And a title`
	* Blocks of *mostly* free-form multi-line text
	* Single lines of text that start a specific word or group of words
	* Symbolic word(s) in text such as `<keyword>`, `"String of text"`, or `-9.8m/s`

2. Define a set of semantic unicode character ranges that can be in terminals


## Words Model

This is a work in progress and subject to frequent change.

![Words Model AST Diagram](org.agileware.natural.words/model/Words.model.jpg)
