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
pred inv4[] {
(some p1,p2: (one Project) {
(one c: (one Course) {
((((c->p1) in projects) && ((c->p2) in projects)) => (p1 != p2))
})
})
}





