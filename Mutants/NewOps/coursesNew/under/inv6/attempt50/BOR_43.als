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
pred inv6[] {
(all student: (one Student) {
(all project: (one Project) {
(((student->project) in projects) => (some course: (one Course) {
(((course->project) in projects) && ((student->course) = enrolled))
}))
})
})
}





