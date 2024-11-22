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
pred inv5[] {
(no p: (one (Person - Student)) {
((no (p.projects)) && (all pr: (one Project) {
(some som: (one Person) {
(pr in (som.projects))
})
}))
})
}





