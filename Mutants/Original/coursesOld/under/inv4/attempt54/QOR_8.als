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
(all p: (one Project) {
(one course1,course2: (one Course) {
(((p in (course1.projects)) && (p in (course2.projects))) => (course1 = course2))
})
})
}





