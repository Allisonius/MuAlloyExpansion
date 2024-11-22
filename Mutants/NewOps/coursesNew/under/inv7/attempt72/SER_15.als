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
(all s: (one Project) {
(all p,p1: (one (s.projects)) {
(all c: (one (s.enrolled)) {
(((p in (c.projects)) && (p1 in (c.projects))) => (p = p1))
})
})
})
}





