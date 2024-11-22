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
pred inv14[] {
((one s1: (one Student),s2: (one Student) {
(one p1: (one Project) {
((((s1->p1) in projects) && ((s2->p1) in projects)) => (all p2: (one Project) {
(((s1->p2) in projects) => ((s2->p2) !in projects))
}))
})
}) && (all s1: (one Student),s2: (one Student) {
(one p1: (one Project) {
((((s1->p1) in projects) && ((s2->p1) in projects)) => (all p2: (one Project) {
(((s2->p2) in projects) => ((s1->p2) !in projects))
}))
})
}))
}





