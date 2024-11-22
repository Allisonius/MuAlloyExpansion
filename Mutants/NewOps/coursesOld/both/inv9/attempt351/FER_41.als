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
(!(some p1,p2: (one Professor) {
(some c: (one Course) {
(((p1->c) in teaches) && ((p2->c) in teaches) && (p1 != p2))
})
}))
}





