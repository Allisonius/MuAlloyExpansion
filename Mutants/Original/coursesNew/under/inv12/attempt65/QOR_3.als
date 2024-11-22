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
(one s: (one Student) {
(all c: (one Course) {
(some g,g1: (one Grade) {
((((s->g) in (c.grades)) && ((s->g1) in (c.grades))) => (g = g1))
})
})
})
}





