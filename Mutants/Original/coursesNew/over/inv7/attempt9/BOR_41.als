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
((all x: (one Student),p: (one Project) {
(((x->p) in projects) => (some c: (one Course) {
(((x->c) in enrolled) && ((c->p) in projects))
}))
}) && (all c: (one Course) {
((#(c.projects)) !> 1)
}))
}





