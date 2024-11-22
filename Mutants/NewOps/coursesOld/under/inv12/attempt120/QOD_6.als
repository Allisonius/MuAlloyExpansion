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
(all p: (one Student) {
(all g1: (one Grade) {
(all g2: (one Grade) {
((((((Course))->(p->g1)) in grades) && ((((Course))->(p->g2)) in grades)) => (g1 = g2))
})
})
})
}





