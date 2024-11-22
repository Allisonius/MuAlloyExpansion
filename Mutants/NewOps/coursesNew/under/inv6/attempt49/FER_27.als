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
pred inv6[] {
(all s1: (one Student) {
(all pr: (one Project) {
(((s1->pr) in teaches) => (some c: (one Course) {
(((s1->c) in enrolled) && ((c->pr) in projects))
}))
})
})
}





