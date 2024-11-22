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
pred inv4[] {
((all p: (one Project) {
(p in (Course.projects))
}) && (all p1,p2: (one Project) {
(((p1 in (Course.projects)) && (p2 in (Course.projects))) => (p1 in p2))
}))
}





