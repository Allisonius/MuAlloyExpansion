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
(lone u: (one Person),c: (one Course),p,x: (one Project) {
((((u->c) in enrolled) && ((c->p) in projects) && ((c->x) in projects) && ((u->x) in projects) && ((u->p) in projects) && (u in Student)) => (u = x))
})
}





