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
(one s1: (one Student) {
(all c1: (one Course) {
(((c1->s1) in (grades.(ordering/last[]))) => (some p1: (one Project) {
(((c1->p1) in projects) && ((s1->p1) in projects))
}))
})
})
}





