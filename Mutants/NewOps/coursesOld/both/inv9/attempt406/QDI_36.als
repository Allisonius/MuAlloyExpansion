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
(all c: (one Course) {
(some p1: (one Professor) {
(some p2: (Person - Student) {
(((p1->c) in teaches) && ((p2->c) !in enrolled))
})
})
})
}





