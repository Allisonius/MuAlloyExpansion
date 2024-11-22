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
(all c: (one Course),s: (one (enrolled.c)),g1,g2: (one Grade) {
((((s.(c.grades)) in g1) && (g2 in (s.(c.grades)))) => (g1 = g2))
})
}





