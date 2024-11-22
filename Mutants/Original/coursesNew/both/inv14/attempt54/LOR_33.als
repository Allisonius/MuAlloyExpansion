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
pred inv14[] {
(all u: (one Person),k: (one (Person - u)),c: (one Course),x: (one Project) {
(one p: (one (Project - x)) {
((((u->p) in projects) && ((k->p) in projects)) => (((u->x) in projects) || ((k->x) !in projects)))
})
})
}





