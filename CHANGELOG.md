# Changelog

## 0.5.3
### Enhancements
 - Added support for LiveView 0.19

## 0.5.2
### Enhancements
 -  Update heroicons to 2.0.13

## 0.5.1
### Enhancements
- Add a `:outline` attribute to specify outline explicitly
- Allow `fill`, `stroke`, and `stroke-width` to be user specified.

## 0.5.0

### Backwards incompatible changes
- Render icons outside HEEx function components has been dropped. Use the function component syntax instead: `<Heroicons.cake />`
- The separate modules `Heroicons.Outline|Solid|Mini` have been dropped in favor of a single `Heroicons` module.
  By default, this module renders the outline style, but a `solid` or `mini` attribute can be provided to
  select styling.

### Enhancements
- Provide unified interface with `solid`, and `mini` attributes for styling.
- Optimize svg generation for LiveView diffing.
- Update to Heroicons 2.11

## 0.4.1

### Enhancements
- Further optimize the JIT Phoenix Component compiler

## 0.4.0
### Enhancements
- Update to Heroicons 2 (https://github.com/mveytsman/heroicons_elixir/pull/12)
- Add update task and generate optimized version of icons (https://github.com/mveytsman/heroicons_elixir/pull/13)
- Optimize compile times by no longer reading every icon during compliation.
- Optimzie runtime performance by adding a Phoenix Component cache.

## 0.3.2 (2022-02-21)

### Enhancements
  - Update heroicons to 1.0.5 (https://github.com/mveytsman/heroicons_elixir/pull/8)


## 0.3.1 (2022-02-15)

### Bug fixes
  - No longer issue warnings for using the components as functions (https://github.com/mveytsman/heroicons_elixir/issues/7)
