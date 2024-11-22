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
(((((Project)) in (((Student)).projects)) && (((Project)) in (((Student)).projects)) && (((Project)) in (((Course)).projects))) => (all g1,g2: (one Grade) {
(((g1 in (((Student)).(((Course)).grades))) && (g2 in (((Student)).(((Course)).grades)))) => ((g1 = (g2.(ordering/prev[]))) || (g2 = (g1.(ordering/prev[]))) || (g1 = g2)))
}))
}





