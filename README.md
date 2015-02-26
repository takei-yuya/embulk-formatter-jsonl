# Jsonl formatter plugin for Embulk

TODO: Write short description here

## Overview

* **Plugin type**: formatter
* **Load all or nothing**: yes
* **Resume supported**: no

## Configuration

- **property1**: description (string, required)
- **property2**: description (integer, default: default-value)

## Example

```yaml
out:
  type: any output input plugin type
  formatter:
    type: jsonl
    property1: example1
    property2: example2
```

## Build

```
$ rake
```
