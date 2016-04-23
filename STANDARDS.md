CODING STANDARDS

For consistency.

1. Use tabs; failing that, 4 spaces per line. SECTION declarations and labels
should not be tabbed.
2. Use :: after labels to export them. Do not use GLOBAL. Local labels should
not have a colon next to them.
3. Labels and macros with only one line of code should be written inline.
Otherwise, all lines of code should be on their own lines, tabbed once, and
separated from the label.
4. Code common to both Power and Speed versions of Telefang goes in a
subdirectory of components; each subdirectory corresponds to a specific game
function and may contain any type of file necessary for that component to work.
5. Separate files based on functionality to reduce line counts. A rule of thumb
is that source code should not exceed 2-3 screenfuls (~140-210 lines).
6. Instruction parameters must be separated from each other by exactly one
space. Do not attempt to visually align parameters.
7. Use [hli]/[hld] over [hl+]/[hl-]. ldi/ldd do not work with our assembler,
even though IDA insists on using them.
8. Workram locations are prefixed with W_, Highram locations with H_. Hardware
registers are prefixed with REG_.
9. Use EQUate constants for HRAM, or ldh.