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
pred inv7[] {
(all p1,p2: (one Project) {
(all c: (one Course) {
((((c->p1) in projects) || ((c->p2) in projects)) => (all s1: (one Student) {
((((s1->p1) in projects) && ((s1->p2) in projects)) => (p1 = p2))
}))
})
})
}





