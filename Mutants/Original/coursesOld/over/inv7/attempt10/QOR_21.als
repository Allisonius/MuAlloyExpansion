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
((all p: (one Project) {
(some s: (one Person) {
((s->p) in projects)
})
}) && (all s: (one Person) {
(lone c: (one Course) {
(lone p: (one Project) {
((((s->c) in enrolled) && ((c->p) in projects)) => ((s->p) in projects))
})
})
}))
}





