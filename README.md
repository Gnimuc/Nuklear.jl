# Nuklear
[![Build Status](https://travis-ci.com/Gnimuc/Nuklear.jl.svg?branch=master)](https://travis-ci.com/Gnimuc/Nuklear.jl)
[![Build Status](https://ci.appveyor.com/api/projects/status/github/Gnimuc/Nuklear.jl?svg=true)](https://ci.appveyor.com/project/Gnimuc/Nuklear-jl)

Julia wrapper for [nuklear](https://github.com/vurtun/nuklear), a minimal state immediate mode graphical user interface toolkit written in ANSI C. The bindings are auto-generated using
[Clang.jl](https://github.com/ihnorton/Clang.jl). Please refer to nuklear [docs](https://github.com/vurtun/nuklear) for how to use those C-bindings. 

## Installation
```
pkg> add Nuklear
```

## Example
Some basic examples can be found in the `demo` folder.

![demo](./demo/demo.gif)

## Backends

- [x] GLFW.jl + ModernGL.jl
- [ ] SFML(pending upstream)
- [ ] SDL(pending upstream)
