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
(all p,col: (one Professor) {
(some c1,c2: (one Course) {
(((c1 in (p.teaches)) && (c2 in (col.teaches))) => (all co: (one Person) {
((co in (p.teaches)) => (co !in (col.enrolled)))
}))
})
})
}





