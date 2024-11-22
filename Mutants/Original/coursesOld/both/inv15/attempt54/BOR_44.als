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
(all g1,g2: (one Grade) {
(all p: (one Project) {
(all c: (one Course) {
((((s1 != s2) && (p in ((s1.projects) & (s2.projects))) && (((s1->g1) & (s2->g2)) in (c.grades))) => (g1 = (g2.(ordering/prev[])))) || (g2 = (g1.(ordering/prev[]))) || (g1 = g2))
})
})
})
})
}





