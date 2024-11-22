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
(all g1,g2: (one Grade) {
(all s: (one Student) {
(all c1,c2: (one Course) {
(((c1 !in (s.enrolled)) && (c2 in (s.enrolled)) && ((s->g1) in (c1.grades)) && ((s->g2) in (c2.grades)) && (g1 != g2)) => (c1 != c2))
})
})
})
}





