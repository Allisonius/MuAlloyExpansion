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
(one p,p1: (one Project) {
(all s: (one Student) {
(all c: (one Course) {
((((p + p1) in (c.projects)) && ((p + p1) in (s.projects))) => (p = p1))
})
})
})
}





