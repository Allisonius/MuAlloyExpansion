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
(some p2: (one Professor) {
(some p1: (one Professor) {
(all c: (one Course) {
(((p1->c) in teaches) && ((p2->c) !in enrolled))
})
})
})
}





