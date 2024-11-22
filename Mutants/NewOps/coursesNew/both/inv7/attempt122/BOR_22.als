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
(all s: (one Student),p1,p2: (one Project) {
(((p1 != (s.projects)) && (p2 in (s.projects))) => (lone c: (one Course) {
(c in ((projects.p1) & (projects.p2)))
}))
})
}





