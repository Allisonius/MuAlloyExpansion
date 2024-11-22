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
(all s1,s2: (one Student),c: (one Course),p: (one Project) {
(((s1 != s2) && ((s1 + s2) in (enrolled.c)) && ((s1 + s2) in (projects.p))) => (all g1,g2: (one Grade) {
(((g1 in s1) && (g2 in (s2.(c.grades)))) => ((g1 = (g2.(ordering/prev[]))) || (g2 = (g1.(ordering/prev[]))) || (g1 = g2)))
}))
})
}





