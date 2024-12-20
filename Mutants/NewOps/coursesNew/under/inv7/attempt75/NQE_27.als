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
(lone p: (one Project) {
(all studentCourses: (one (student.enrolled)) {
(p in ((studentCourses.projects) & (student.projects)))
})
})
})
}





