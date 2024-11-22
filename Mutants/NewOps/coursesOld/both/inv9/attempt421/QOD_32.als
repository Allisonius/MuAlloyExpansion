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
(!(some x: (one Professor),x1: (one Professor) {
(((x->((Course))) in teaches) && ((x1->((Course))) in enrolled) && (x != x1))
}))
}





