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
pred inv14[] {
(all s1,s2: (one Student),proj: (one Project) {
(((proj in (s1.projects)) && (proj in (s2.projects)) && (s1 != s2)) => (some proj2: (one Project) {
((proj2 in (s2.projects)) && (proj2 !in (s1.projects)))
}))
})
}





