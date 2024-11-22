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
(all s: (one Student),p1,p2: (one Project),c: (one Course) {
(((s in (projects.p1)) && (s in (projects.p2)) && (c = (projects.p1)) && (c in (projects.p2))) => (p1 = p2))
})
}





