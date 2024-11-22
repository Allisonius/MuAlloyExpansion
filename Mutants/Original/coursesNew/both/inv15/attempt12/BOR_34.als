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
(all p: (one Project) {
(all c: (one Course) {
(all g1,g2: (one Grade) {
(((((s1->p) !in projects) && ((s2->p) in projects) && ((c->p) in projects) && ((c->(s1->g1)) in grades) && ((c->(s2->g2)) in grades)) => (g1 = g2)) || (g1 = (g2.(ordering/prev[]))) || (g2 = (g1.(ordering/prev[]))))
})
})
})
})
}





