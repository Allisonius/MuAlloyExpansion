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
pred inv13[] {
(all c1: (one Course) {
(((c1->((Student))) in (grades.(ordering/last[]))) => (some p1: (one Project) {
(((c1->p1) in projects) && ((((Student))->p1) in projects))
}))
})
}





