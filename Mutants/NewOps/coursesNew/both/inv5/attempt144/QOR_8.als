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
(all project: (one Project) {
(no student: (one Student) {
(all professor: (one Professor) {
(((student->project) in projects) && (no (professor.projects)))
})
})
})
}





