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
(one c1: (one Course) {
(all p1,p2: (one Person) {
((c1 in (p1.enrolled)) => (c1 in (p2.teaches)))
})
})
}





