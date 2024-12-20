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
(all s: (one Student) {
(some c: (one Professor) {
(one p: (one Project) {
(((s->c) in enrolled) && ((s->p) in projects))
})
})
})
}





