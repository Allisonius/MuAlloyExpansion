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
(all g: (one Grade) {
((g in ((c.grades).Person)) => (((c.grades).Grade) != none))
})
}) && (all s1,s2: (one Student) {
(all c: (one Course) {
(s1 != s2)
})
}))
}





