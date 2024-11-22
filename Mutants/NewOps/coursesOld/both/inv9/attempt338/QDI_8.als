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
(all p1,p2: (Person + Professor) {
(all c: (one Course) {
((c in ((p1 + p2).teaches)) => (p1 !in (enrolled.(p2.teaches))))
})
})
}





