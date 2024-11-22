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
(all p: (one Person),c,c1: (one Course),ps: (one Professor) {
((((p->c) in teaches) && ((ps->c1) in teaches)) => (((ps->c) !in enrolled) && ((p->c) = enrolled)))
})
}





