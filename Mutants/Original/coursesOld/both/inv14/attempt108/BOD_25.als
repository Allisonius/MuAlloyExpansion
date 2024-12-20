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
(all x,y: (one Student),p: (one Project) {
((((x->p) in projects) && ((y->p) in projects)) => (all p1: (one Project) {
(((x->p1) !in projects) && ((y->p1) !in projects))
}))
})
}





