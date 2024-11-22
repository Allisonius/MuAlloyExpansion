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
(all student: (one Student) {
(all grade: (one Grade) {
(all proj: (one Project) {
(((student->grade) in (((Course)).grades)) => ((proj in (((Course)).projects)) && (proj in (student.projects))))
})
})
})
}





