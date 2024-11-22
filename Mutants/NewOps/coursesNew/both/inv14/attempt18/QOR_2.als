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
(no x,y,z: (one Student),p,g: (one Project) {
((((x->p) in projects) && ((y->p) in projects)) => (((z->g) in projects) && ((x->g) in projects)))
})
}





