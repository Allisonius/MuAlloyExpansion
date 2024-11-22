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
((all s1,s2: (one Student) {
(one p: (one Project) {
((((s1->p) in projects) && ((s2->p) in projects)) => (all ps: (one (Project - p)) {
(((s1->ps) in projects) && ((s2->ps) !in projects))
}))
})
}) && (all s1,s2: (one Student) {
(one p: (one Project) {
((((s1->p) in projects) && ((s2->p) in projects)) => (((s2->(Project - p)) in projects) && ((s1->(Project - p)) !in projects)))
})
}))
}





