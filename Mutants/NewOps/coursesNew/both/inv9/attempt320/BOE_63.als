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
(all p1: (one Professor) {
(all p: (one Person) {
(all c1: (one Course) {
(((c1 in (p1.teaches)) && (c1 in (p.enrolled))) => ((Professor !in p) && (p1 in Professor)))
})
})
})
}





