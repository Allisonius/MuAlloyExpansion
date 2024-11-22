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
pred inv6[] {
(all s: (Person - Student) {
(all p: (one Project) {
(all c: (one Course) {
(((s->p) in projects) => (((s->c) in enrolled) && ((c->p) in projects)))
})
})
})
}





