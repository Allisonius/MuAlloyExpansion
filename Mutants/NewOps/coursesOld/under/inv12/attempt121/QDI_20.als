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
pred inv12[] {
(all grade1,grade2: (one Grade) {
(all person: (Person + Student) {
(all course: (one Course) {
((((person->grade1) + (person->grade2)) in (course.grades)) => (grade1 = grade2))
})
})
})
}





