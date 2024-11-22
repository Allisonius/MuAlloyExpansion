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
(all person: (one Student) {
(all project1,project2: (one Project) {
(all course: (one Course) {
((((project1 + project2) in (person.projects)) && (some ((project1 + project2) & (course.projects)))) => (project1 = project2))
})
})
})
}





