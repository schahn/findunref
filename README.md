# findunref

`findunref` is a tool used for detecting unreferenced files in a
directory tree.  Regular use on a source code repository will result in
the detection of potentially obsolete components within the tree.

This version has been minimally adjusted to build on Linux-based
systems.  The original version of `findunref` comes from the ON build
for Solaris/OpenSolaris/[Illumos][illumos].  See the latter for the
[original version][illumos-findunref] in a maintained, native context.

## Build

Invoking

```
$ make all
```

will produce a `findunref` binary in the current directory.

Invoking

```
$make docs
```

will, if the GNU troff system is available, build a PostScript version
of the manual page, `findunref`(1ONBLD), in the current directory.

[illumos]: https://illumos.org/
[illumos-findunref]:
https://github.com/illumos/illumos-gate/tree/master/usr/src/tools/findunref
