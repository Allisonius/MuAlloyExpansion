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
(all s: (one Student),p: (one Project) {
((p !in (s.projects)) && (some s2: (one (Student - s)) {
((p in (s2.projects)) => (all ps: (one Project) {
((ps in (s.projects)) && (ps !in (s2.projects)))
}))
}))
})
}





