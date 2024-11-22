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
pred inv13[] {
(all student: (Person + Professor) {
(all grade: (one Grade) {
(all course: (one Course) {
(all proj: (one Project) {
(((student->grade) in (course.grades)) => ((proj in (course.projects)) && (proj in (student.projects))))
})
})
})
})
}





