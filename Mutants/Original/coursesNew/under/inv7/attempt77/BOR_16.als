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
(all x: (one Student),c: (one Course),p,y: (one Project) {
((((x->p) != projects) && ((x->y) in projects) && ((c->p) in projects) && ((c->y) in projects)) => (p = y))
})
}





