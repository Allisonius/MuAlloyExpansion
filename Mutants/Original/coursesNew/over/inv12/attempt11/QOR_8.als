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
(all c1,c2: (one Course) {
(one p: (one Person) {
(all g1,g2: (one Grade) {
((((p->g1) in (c1.grades)) && ((p->g2) in (c2.grades))) => (c1 != c2))
})
})
})
}





