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
(all s1: (one Student) {
(all c: (one Course) {
((one (((c.projects) & (s1.projects)) & ((Student - s1).projects))) => (all g1: (one Grade) {
(all g2: (one Grade) {
((((s1->g1) in (c.grades)) && (((Student - s1)->g2) in (c.grades))) => (((g2.(ordering/next[])) = g1) || ((g1.(ordering/next[])) = g2)))
})
}))
})
})
}





