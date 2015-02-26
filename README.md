# Jsonl formatter plugin for Embulk

Format datum to jsonl, 1 json per 1 line

## Overview

* **Plugin type**: formatter
* **Load all or nothing**: yes
* **Resume supported**: no

## Configuration

- **encoding**: output encoding. must be one of "UTF-8", "UTF-16LE", "UTF-32BE", "UTF-32LE" or "UTF-32BE" (string default: 'UTF-8')
- **newline**: newline character.
    - CRLF: use `\r`(0x0d) and `\n`(0x0a) as newline character
    - LF: use `\n`(0x0a) as newline character
    - CR: use `\r`(0x0d) as newline character
    - NUL: use `\0`(0x00) instead of newline (for example, `xargs -0` will be good friend with it)
    - NO: dump JSONs in a line

## Example

```yaml
out:
  type: any output input plugin type
  formatter:
    type: jsonl
    encoding: UTF-8
    newline: NUL
```

## Build

```
$ rake
```
