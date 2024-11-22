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
(all u1,u2: (one Student) {
(all c: (one Course) {
(((u1 in ((c.grades).Professor)) && (u2 in ((c.grades).Grade))) => (u1 = u2))
})
})
}





