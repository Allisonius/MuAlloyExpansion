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
pred inv14[] {
(all p: (one Course) {
(all project: (one (p.projects)) {
(p = ((getProjectStudents[project]) & (getProjectStudents[((p.projects) - project)])))
})
})
}

fun getProjectStudents[project: Project] : (set Student) {
((projects.project) & Person)
}



