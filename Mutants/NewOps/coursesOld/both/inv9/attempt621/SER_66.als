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
((all p1,p2: (one Professor) {
(all c: (one Course) {
(((c in (p1.teaches)) && (c in (p2.teaches)) && (p1 != p2)) => ((c !in (p1.enrolled)) && (c !in (p2.enrolled))))
})
}) && (all p1,p2: (one Professor) {
(all c: (one Person) {
(((c in (p1.teaches)) && (c in (p2.teaches)) && (p1 != p2)) => (all c2: (one Course) {
((c2 !in (p1.enrolled)) && (c2 !in (p2.enrolled)))
}))
})
}))
}





