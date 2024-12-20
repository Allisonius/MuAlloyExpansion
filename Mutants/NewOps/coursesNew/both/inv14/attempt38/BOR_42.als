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
(all x,y: (one Person),p,k: (one Project) {
(((x in Student) && (y in Student) && ((x->p) in projects) && ((x->p) != projects)) => (((x->k) in projects) && ((x->p) !in projects)))
})
}





