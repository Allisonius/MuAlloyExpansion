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
(all a,b: (one Professor) {
(all c: (one Course) {
(((a != b) && ((a->c) in teaches) && ((b->c) in teaches)) => ((a->c) in teaches))
})
})
}





