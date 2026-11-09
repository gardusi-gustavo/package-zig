# package-zig

Zig reference package for explicit memory control, C interop, and cross-compilation.

## Layout

| Path | Holds |
| --- | --- |
| `src/` | library and tests |
| `build.zig` | build definition |
| `build.zig.zon` | package metadata |

## Build

```bash
zig build test
```

## Use

```bash
Add the package as a Zig dependency and import `kit`.
```
