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
pred inv9[] {
(all person1,person2: (Person & Student) {
(all course: (one Course) {
(((person1 in Professor) && (course in (person2.enrolled)) && (course in (person1.teaches))) => (person2 in Student))
})
})
}





