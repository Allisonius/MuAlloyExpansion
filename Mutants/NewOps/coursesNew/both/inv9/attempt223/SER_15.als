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
(all p: (one Grade) {
(all c: (one (p.teaches)) {
(all s: (one Person) {
((s in (enrolled.c)) => (s !in Professor))
})
})
})
}





