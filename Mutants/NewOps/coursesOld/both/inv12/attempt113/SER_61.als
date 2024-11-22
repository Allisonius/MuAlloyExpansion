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
(all p: (one Student) {
((c in (p.enrolled)) => (p in ((c.grades).Grade)))
})
}) && (all c: (one Course) {
(all p1,p2: (one Person) {
(((p1 + p2) in ((c.grades).Grade)) => (p1 != p2))
})
}))
}





