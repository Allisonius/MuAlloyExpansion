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
((all s1,s2: (one Student) {
(one p: (one Project) {
(all ps: (one (Project - p)) {
((ps in (s1.projects)) => (ps !in (s2.projects)))
})
})
}) && (all s1,s2: (one Student) {
(one p: (one Project) {
(((p in (s1.projects)) && (p in (s2.projects))) => (all ps: (one (Project - p)) {
((ps in (s2.projects)) => (ps !in (s1.projects)))
}))
})
}))
}





