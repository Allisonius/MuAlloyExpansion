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
pred inv15[] {
(all s,s1: (one Student),p: (one ((s.projects) & (s1.projects))),g: (one (s.((Course :> (projects.p)).grades))),g1: (one (s1.((Person :> (projects.p)).grades))) {
(g = g1)
})
}





