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
pred inv7[] {
(all p1,p2: (one Project),s: (one Student),c: (one Course) {
(((c in (s.enrolled)) && ((p1 + p2) in (lone (c.projects))) && ((p1 + p2) in (s.projects))) => (p1 = p2))
})
}





