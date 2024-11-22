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
(some s1,s2: (one Student) {
(all p: (one Project) {
(((s1 != s2) && (p in (s1.projects)) && (p in (s2.projects))) => (all g1,g2: (one Grade) {
(((g1 in (s1.(p.grades))) && (g2 in (s2.(p.grades)))) => ((g1 = (g2.(ordering/prev[]))) || (g2 = (g1.(ordering/prev[]))) || (g1 = g2)))
}))
})
})
}





