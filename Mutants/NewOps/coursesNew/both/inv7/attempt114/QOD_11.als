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
pred inv7[] {
(some p: (one Project) {
(some c: (one Course) {
((((((Student))->c) in enrolled) && ((c->p) in projects)) => ((((Student))->p) in projects))
})
})
}





