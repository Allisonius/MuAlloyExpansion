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
(all p: (one Project),c: (one Course) {
(((s1 in s2) && (p in (s1.projects)) && (p in (s2.projects))) => (all g1,g2: (one Grade) {
((g2 = (g1.(ordering/prev[]))) || (g1 = (g2.(ordering/prev[]))) || (g1 = g2))
}))
})
})
}





