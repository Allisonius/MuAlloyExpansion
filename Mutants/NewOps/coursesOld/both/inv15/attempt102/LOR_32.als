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
(all s1,s2: (one Student) {
(all p1: (one Project) {
(all c1: (one Course) {
((((s1->p1) in projects) || ((s2->p1) in projects) || (s1 != s2) || ((c1->p1) in projects)) => (all g1,g2: (one Grade) {
((((c1->(s1->g1)) in grades) && ((c1->(s2->g2)) in grades)) => ((g1 = (g2.(ordering/prev[]))) || (g2 = (g1.(ordering/prev[]))) || (g1 = g2)))
}))
})
})
})
}





