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
(all p: (one Professor) {
(all c: (one Course) {
((c in (p.enrolled)) => ((((c.grades).Grade) !in (((p.teaches).grades).Person)) && ((p.enrolled) !in (((c.grades).Grade).teaches))))
})
})
}





