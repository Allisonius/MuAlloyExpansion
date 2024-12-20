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
(all u: (one Person) {
(some p: (one Project) {
(one c: (one Course) {
(((u->p) in projects) && ((u->c) in enrolled) && ((c->p) in projects) && (u = Student))
})
})
})
}





