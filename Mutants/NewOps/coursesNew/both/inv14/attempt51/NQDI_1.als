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
(all disj x,y: (one Person),disj p: (one Project),disj i: (one (Project - p)) {
((((x->p) in projects) && ((y->p) in projects) && (x in Student) && (y in Student)) => (((x->i) in projects) && ((y->i) !in projects)))
})
}





