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
pred inv9[] {
(!(lone x: (one Professor),x1: (one Professor) {
(some c: (one Course) {
(((x->c) in teaches) && ((x1->c) in enrolled) && (x != x1))
})
}))
}





