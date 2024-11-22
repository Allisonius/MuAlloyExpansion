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
(all s: (Person + Professor) {
(some c: (one Course) {
(((s->c) in enrolled) => (lone p: (one Project) {
(((s->p) in projects) && ((c->p) in projects))
}))
})
})
}





