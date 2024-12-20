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
(no p: (one Professor) {
(all c: (one (p.enrolled)) {
(all colleagues: (one ((enrolled.c) - p)) {
((p.teaches) !in (colleagues.enrolled))
})
})
})
}





