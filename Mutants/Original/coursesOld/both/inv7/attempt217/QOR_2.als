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
(no person: (one Student) {
(lone project: (one Project) {
(all course: (one Course) {
((project in (person.projects)) && (project in (course.projects)))
})
})
})
}





