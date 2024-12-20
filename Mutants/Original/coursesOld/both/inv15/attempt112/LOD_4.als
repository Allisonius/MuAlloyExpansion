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
(all c: (one Course),p: (one Person),g1,g2: (one Grade) {
((((c->(p->g1)) in grades) && ((c->(p->g2)) in grades)) => (g1 = g2))
})
}





