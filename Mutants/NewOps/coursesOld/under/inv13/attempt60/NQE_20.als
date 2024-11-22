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
pred inv13[] {
(some p: (one Project) {
(all c: (one Course) {
(some g1: (one Grade) {
((g1 = (ordering/max[((c.grades).Person)])) => (all s: (one Student) {
((p in (c.projects)) && (p in (s.projects)))
}))
})
})
})
}





