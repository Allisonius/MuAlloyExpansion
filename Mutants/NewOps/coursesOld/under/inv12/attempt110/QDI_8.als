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
pred inv12[] {
(all c: (one Course),g1: (one Grade),g2: (one Grade),s: (Person & Professor) {
((((s->g1) in (c.grades)) && ((s->g2) in (c.grades))) => (g1 = g2))
})
}





