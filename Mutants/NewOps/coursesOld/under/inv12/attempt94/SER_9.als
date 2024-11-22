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
(all g1,g2: (one Student) {
(all s: (one Student) {
(all c: (one Course) {
(((g1 + g2) in (s.(c.grades))) => (g1 = g2))
})
})
})
}





