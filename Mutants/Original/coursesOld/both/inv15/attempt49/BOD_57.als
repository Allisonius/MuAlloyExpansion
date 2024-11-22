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
(all p: (one Project) {
(all s1,s2: (one Student) {
(all c: (one Course) {
(((s1 != s2) && (p in (s1.projects)) && (p in (s2.projects)) && (p in (c.projects))) => (some g1,g2: (one Grade) {
((g1 in (s1.(c.grades))) && (g2 in s2) && (g1 !in (ordering/prevs[g2])))
}))
})
})
})
}





