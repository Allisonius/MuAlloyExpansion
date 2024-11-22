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
(one p1,p2: (one (Person - Student)) {
(all c: (one Course) {
((c in (p1.teaches)) => (c !in (p2.enrolled)))
})
})
}





