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
(all s: (one Student),c: (one Person),g1: (one Grade) {
(((c->(s->g1)) in grades) => (all g2: (one Grade) {
(((c->(s->g2)) in grades) => (g1 = g2))
}))
})
}





