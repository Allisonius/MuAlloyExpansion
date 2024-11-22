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
(all c1: (one Course),c2: (one Course),p: (one Student),p2: (one Professor) {
((((p->c1) in teaches) && ((p2->c2) in enrolled)) => (c1 = c2))
})
}





