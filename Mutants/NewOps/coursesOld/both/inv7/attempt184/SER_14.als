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
(all s: (one Course),proj1: (one Project),proj2: (one Project) {
(((proj1 in (s.projects)) && (proj2 in (s.projects))) => (proj1 = proj2))
})
}





