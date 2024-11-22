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
(all student: (one Student) {
(all p1,p2: (one Project) {
(some course: (one Course) {
((((p1 + p2) in (student.projects)) && ((p1 + p2) in (course.projects))) => (p1 = p2))
})
})
})
}





