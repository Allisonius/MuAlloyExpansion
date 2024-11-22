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
(all x: (one Person),p,k: (one Project),c: (one Course) {
((((x->p) != projects) && ((x->k) in projects)) => (((x in Student) && ((x->c) in enrolled) && ((c->p) in projects) && ((c->k) in projects)) => (p = k)))
})
}





