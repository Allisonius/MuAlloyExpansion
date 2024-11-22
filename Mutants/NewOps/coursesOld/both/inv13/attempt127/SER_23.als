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
pred inv13[] {
(all c1: (one Course) {
(all g1: (one Grade) {
(all s1,s2: (one Person) {
((((c1->(s1->g1)) in grades) => (some g2: (one Grade) {
(some s2: (one Student) {
(((c1->(s2->g2)) in grades) && (g2 = (ordering/max[g1])))
})
})) => (some p1: (one Project) {
(((c1->p1) in projects) && ((s2->p1) in projects))
}))
})
})
})
}





