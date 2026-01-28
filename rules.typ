#set page(margin: 1in)
#set text(size: 11pt, font: "New Computer Modern")
#set par(leading: 1em)
#let diff_eqs = (
  $ (d) / (d x) k = 0 $,
  $ (d) / (d x) [f(x) plus.minus g(x)] = f'(x) plus.minus g'(x) $,
  $ (d) / (d x) [k dot f(x)] = k dot f'(x) $,
  $ (d) / (d x) [f(x)g(x)] = f(x)g'(x) + g(x)f'(x) $,
  $ (d) / (d x) [f(x) / g(x)] = (g(x)f'(x) - f(x)g'(x)) / [g(x)]^2 $,
  $ (d) / (d x) f(g(x)) = f'(g(x)) dot g'(x) $,
  $ (d) / (d x) x^n = n x^(n-1) $,
  $ (d) / (d x) sin x = cos x $,
  $ (d) / (d x) cos x = -sin x $,
  $ (d) / (d x) tan x = sec^2 x $,
  $ (d) / (d x) cot x = -csc^2 x $,
  $ (d) / (d x) sec x = sec x tan x $,
  $ (d) / (d x) csc x = -csc x cot x $,
  $ (d) / (d x) e^x = e^x $,
  $ (d) / (d x) a^x = a^x ln a $,
  $ (d) / (d x) ln |x| = 1 / x $,
  $ (d) / (d x) arcsin x = 1 / sqrt(1 - x^2) $,
  $ (d) / (d x) arccos x = (-1) / sqrt(1 - x^2) $,
  $ (d) / (d x) arctan x = 1 / (x^2 + 1) $,
)

#let int_eqs = (
  $ integral a d x = a x + C $,
  $ integral x^n d x = x^(n+1) / (n + 1) + C, n != -1 $,
  $ integral 1 / x d x = ln |x| + C $,
  $ integral e^x d x = e^x + C $,
  $ integral a^x d x = a^x  / ( ln a ) + C $,
  $ integral ln x d x = x ln x - x + C $,
  $ integral sin x d x = -cos x + C $,
  $ integral cos x d x = sin x + C $,
  $ integral tan x d x = -ln |cos x| + C $,
  $ integral cot x d x = ln |sin x| + C $,
  $ integral sec x d x = ln |sec x + tan x| + C $,
  $ integral csc x d x = -ln |csc x + cot x| + C $,
  $ integral sec^2 x d x = tan x + C $,
  $ integral csc^2 x d x = -cot x + C $,
  $ integral sec x tan x d x = sec x + C $,
  $ integral csc x cot x d x = -csc x + C $,
  $ integral 1 / sqrt(a^2 - b^2x^2) d x = 1 / b arcsin (( b x  ) / a) + C $,
  $ integral 1 / sqrt(b^2x^2 - a^2 ) d x = 1 / b op("arcsec") (( b x  ) / a) + C $,
  $ integral 1 / (a^2 + b^2x^2) d x = 1 / ( a b ) arctan (( b x ) / a) + C $,
)

#grid(
  columns: (1fr, 1fr),
  gutter: 2em,
  [
    #align(left, text(size: 13pt)[Differentiation Formulas])
    #v(0.3em)

    #grid(
      columns: (1fr),
      row-gutter: 1em,
      align: left,
      ..diff_eqs.map(e => block(align(left, e))),
    )
  ],
  [
    #align(left, text(size: 13pt)[Integration Formulas])
    #v(0.3em)

    #grid(
      columns: (1fr),
      row-gutter: 1em,
      align: left,
      ..int_eqs.map(e => block(align(left, e))),
    )
  ]
)

== Integration by parts

Suppose $u$, $v$ are functions of $x$, then
$ integral u v'  = u v - integral v u' $

== Trig sub
#v(1em)
#pad(x: -5%,
table(
  columns: 6,
  align: center + horizon,
  inset: 8pt,
  stroke: 0.5pt,
  table.header(
    [*Term*], [*Replace* $x$], [*Replace* $d x$], [*New Term*], [*Domain*], [*Identity*]
  ),

  $sqrt(a^2 - x^2)$,
  $a sin theta$,
  $a cos theta d theta$,
  $a cos theta$,
  $theta in [-pi/2, pi/2]$,
  $1 - sin^2 theta = cos^2 theta$,

  $sqrt(x^2 + a^2)$,
  $a tan theta$,
  $a sec^2 theta d theta$,
  $a sec theta$,
  $theta in (-pi/2, pi/2)$,
  $1 + tan^2 theta = sec^2 theta$,

  $sqrt(x^2 - a^2)$,
  $a sec theta$,
  $a sec theta tan theta d theta$,
  $a tan theta$,
  $theta in [0, pi/2) union [pi, (3pi)/2)$,
  $sec^2 theta - 1 = tan^2 theta$,
))
