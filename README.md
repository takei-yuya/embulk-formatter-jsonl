# Jsonl formatter plugin for Embulk

Format datum to jsonl, 1 json per 1 line

## Overview

* **Plugin type**: formatter
* **Load all or nothing**: yes
* **Resume supported**: no

## Configuration

- **encoding**: output encoding. must be one of "UTF-8", "UTF-16LE", "UTF-32BE", "UTF-32LE" or "UTF-32BE" (string default: 'UTF-8')
- **newline**: newline character. (string default: 'LF')
    - CRLF: use `\r`(0x0d) and `\n`(0x0a) as newline character
    - LF: use `\n`(0x0a) as newline character
    - CR: use `\r`(0x0d) as newline character
    - NUL: use `\0`(0x00) instead of newline (for example, `xargs -0` will be good friend with it)
    - NO: dump JSONs in a line
- **date_format**: date format. See below example. (string default: nil)
    - "yyyy-MM-dd HH:mm:ss": 2015-04-26 17:23:25
    - "yyyy-MM-dd'T'HH:mm:ss.SSSZ": 2015-04-26T17:23:25.123+0900
    - For more information: [SimpleDateFormat class document](https://docs.oracle.com/javase/8/docs/api/java/text/SimpleDateFormat.html)
- **timezone**: timezone. "JST" (string default: nil), When you use this option, you also need to set date_format option too.
- **json_columns**: json formatted column name. (array default:[])

## Example

```yaml
out:
  type: any output input plugin type
  formatter:
    type: jsonl
    encoding: UTF-8
    newline: NUL
```

Timezone example.

```yaml
out:
  type: any output input plugin type
  formatter:
    type: jsonl
    timezone: "UTC"
    date_format: "yyyy-MM-dd'T'HH:mm:ss.SSSZ"
```

## Build

```
$ rake
```
