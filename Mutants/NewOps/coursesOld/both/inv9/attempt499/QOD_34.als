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
(all p2: (one Professor) {
(all p: (one Person) {
((((p2->((Course))) in teaches) && ((p->((Course))) in enrolled)) => (p !in Professor))
})
})
}





