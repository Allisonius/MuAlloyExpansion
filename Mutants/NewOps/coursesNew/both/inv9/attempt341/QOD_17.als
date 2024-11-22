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
(some c: (one Course) {
(((c in (((Professor)).teaches)) && (c in ((Professor - ((Professor))).teaches))) => (all co: (one Course) {
((co in (((Professor)).teaches)) => (co !in ((Professor - ((Professor))).enrolled)))
}))
})
}





