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
(all p: (one Person) {
(one pr: (one Project) {
(((p->pr) in projects) => (some c: (one Student) {
(((p->c) in enrolled) && ((c->pr) in projects))
}))
})
})
}





