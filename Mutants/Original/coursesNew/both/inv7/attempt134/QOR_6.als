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
(all project: (one Project) {
(all course: (one Course) {
((((student->course) in enrolled) && ((course->project) in projects)) => ((student->project) in projects))
})
})
})
}





