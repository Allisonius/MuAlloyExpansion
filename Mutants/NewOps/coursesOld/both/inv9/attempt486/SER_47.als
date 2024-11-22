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
(all p1: (one Professor) {
(all c1: (one Course) {
(((p1->c1) in teaches) => (no p2: (one Person) {
((p1 != p2) && ((p2->c1) !in enrolled))
}))
})
})
}





