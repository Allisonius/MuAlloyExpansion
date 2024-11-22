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
pred inv8[] {
(all p1: (one Professor),z: (one Student) {
(all c: (one Course) {
((((p1->c) in teaches) && ((z->c) !in enrolled)) => (p1 != z))
})
})
}





