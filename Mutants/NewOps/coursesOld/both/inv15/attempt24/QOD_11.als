module unknown
open util/integer [] as integer
open util/ordering [Grade] as ordering
sig Person {
teaches: (set Course),
enrolled: (set Course),
projects: (set Project)
}
sig Professor in Person {}
sig Student in Person {}
sig Course {
projects: (set Project),
grades: (Person->Grade)
}
sig Project {}
sig Grade {}
pred inv15[] {
((some (((((Student)).projects) & (((Student)).projects)) & (((Course)).projects))) => (all g1: (one (((Student)).(((Course)).grades))),g2: (one (((Student)).(((Course)).grades))) {
(g1 in (((g2.(ordering/prev[])) + (g2.(ordering/next[]))) + g2))
}))
}





