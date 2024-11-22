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
(all p,s: (one Person) {
(((Professor in s) && (p in Professor)) => (all c,d: (one Course) {
((c in (s.teaches)) => (c !in (p.enrolled)))
}))
})
}





