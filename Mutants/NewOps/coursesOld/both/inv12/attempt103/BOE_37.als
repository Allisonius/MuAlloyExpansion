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
pred inv12[] {
(all s1,s2: (one Student),c: (one Course),g1,g2: (one Grade) {
((((s1->g1) in (c.grades)) && ((c.grades) in (s2->g2))) => (s1 != s2))
})
}





