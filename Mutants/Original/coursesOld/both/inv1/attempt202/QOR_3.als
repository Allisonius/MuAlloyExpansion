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
pred inv1[] {
(lone p: (one Professor),p2: (one Person) {
((no ((p.enrolled) + (p2.enrolled))) && (no ((p.teaches) & (p2.enrolled))))
})
}





