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
(all p: (one Student) {
(all pr1,pr2: (one Project) {
(all c: (one Course) {
((((p->pr1) in projects) && ((p->pr2) in projects) && ((c->pr1) in projects) && ((c->pr2) in projects)) => (pr1 !in pr2))
})
})
})
}





