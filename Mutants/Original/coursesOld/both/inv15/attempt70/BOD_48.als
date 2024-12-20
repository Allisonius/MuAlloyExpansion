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
(all s1,s2: (one Student),p: (one Project),c: (one Course),g1,g2: (one Grade) {
((((s1 != s2) && (p in (s1.projects)) && (p in (s2.projects)) && (p in (c.projects)) && ((s1->g1) in (c.grades)) && ((s2->g2) in (c.grades))) => (g1 = g2)) || ((g2.(ordering/prev[])) = g1) || (g1 = g2))
})
}





