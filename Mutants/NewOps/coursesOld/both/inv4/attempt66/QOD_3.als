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
pred inv4[] {
(all p: (one Project) {
(no p1: (one Person) {
((((((Course))->p) in projects) && ((((Course))->p) in projects)) => ((((Course)) = ((Course))) && ((p1->p) in projects)))
})
})
}





