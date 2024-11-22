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
pred inv5[] {
(some p: (one Project) {
(lone c: (one Course) {
(some y: (one Person) {
((((y->c) in enrolled) && ((c->p) in projects)) => ((y in Student) && ((y->p) in projects)))
})
})
})
}





