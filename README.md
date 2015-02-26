# Jsonl formatter plugin for Embulk

Format datum to jsonl, 1 json per 1 line

## Overview

* **Plugin type**: formatter
* **Load all or nothing**: yes
* **Resume supported**: no

## Configuration

## Example

```yaml
out:
  type: any output input plugin type
  formatter:
    type: jsonl
```

## Build

```
$ rake
```
