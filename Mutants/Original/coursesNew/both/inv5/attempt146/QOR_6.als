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
((lone project: (one Project) {
(some student: (one Student) {
((student->project) in projects)
})
}) && (all professor: (one Professor) {
(no (professor.projects))
}))
}





