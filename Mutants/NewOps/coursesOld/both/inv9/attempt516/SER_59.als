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
pred inv9[] {
(all p1,p2: (one Person) {
(all c: (one Course) {
(((p1 != p2) && (c in (p1.teaches)) && (c in (p2.enrolled))) => ((p1 in Grade) && (p2 in Student)))
})
})
}





