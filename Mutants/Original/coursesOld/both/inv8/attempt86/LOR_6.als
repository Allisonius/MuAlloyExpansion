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
(all c: (one Course),p: (one Professor),g: (one Grade) {
(((p->c) in teaches) || ((p->c) !in enrolled) || ((c->(p->g)) !in grades))
})
}





