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
pred inv12[] {
((all c: (one Course) {
(all s: (one Student) {
(all g: (one Grade) {
(((s->g) in (c.grades)) => (c in (s.enrolled)))
})
})
}) && (some s1,s2: (one Student) {
(all c: (one Course) {
(((s1 in ((c.grades).Grade)) && (s2 in ((c.grades).Grade))) => ((s1 != s2) && (c in (s1.enrolled)) && (c in (s2.enrolled))))
})
}))
}





