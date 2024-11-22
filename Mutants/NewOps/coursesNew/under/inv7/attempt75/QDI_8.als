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
(all student: (Person & Professor) {
(all studentCourses: (one (student.enrolled)) {
(lone p: (one Project) {
(p in ((studentCourses.projects) & (student.projects)))
})
})
})
}





