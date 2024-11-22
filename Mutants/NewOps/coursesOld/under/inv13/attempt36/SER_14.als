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
pred inv13[] {
(all s: (one Course),c: (one Course) {
(((c->s) in (grades.(ordering/last[]))) => (some p: (one Project) {
(((c->p) in projects) && (p in (s.projects)))
}))
})
}





