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
pred inv3[] {
(all p: (one Person) {
(all c1,c2: (one Course) {
(((c1 in (p.enrolled)) && (c2 in (p.teaches))) => (c2 != c1))
})
})
}





