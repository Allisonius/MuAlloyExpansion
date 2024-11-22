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
(all s: (Person - Professor) {
(all y,z: (one Project) {
(all c: (one Course) {
(((y in (s.projects)) && (z in (s.projects)) && (y in (c.projects)) && (z in (c.projects))) => (y = z))
})
})
})
}





