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
(all p: (one Professor) {
(((p->((Course))) in teaches) => (all r: (one Professor) {
(((r->((Course))) in teaches) && ((r->((Course))) !in enrolled) && ((p->((Course))) !in enrolled))
}))
})
}





