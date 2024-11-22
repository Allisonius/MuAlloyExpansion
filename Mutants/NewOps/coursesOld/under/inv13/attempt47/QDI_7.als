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
(all s: (Person + Professor) {
(all c: (one Course) {
((s in ((c.grades).(ordering/last[]))) => (some p: (one Project) {
(((c->p) in projects) && ((s->p) in projects))
}))
})
})
}





