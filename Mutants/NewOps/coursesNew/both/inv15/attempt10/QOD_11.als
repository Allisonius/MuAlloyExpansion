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
(all c: (one ((((Student)).enrolled) & (((Student)).enrolled))) {
(all g1: (one (((Student)).(c.grades))),g2: (one (((Student)).(c.grades))) {
(((some (((((Student)).projects) & (((Student)).projects)) & (c.projects))) && (some g1) && (some g2)) => ((g2 in (g1.(ordering/prev[]))) || (g1 in (g2.(ordering/prev[]))) || (g1 = g2)))
})
})
}





