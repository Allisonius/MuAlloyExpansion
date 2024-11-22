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
(all pe: (one Person),p: (one Professor),c: (one Course) {
((((p->c) in teaches) || ((pe->c) in enrolled) || (p != pe)) => (pe !in Professor))
})
}





