open util/ordering [Grade] as ordering

pred test1 {
some disj Person0: Person {some disj Course0, Course2, Course1: Course {some disj Project0, Project2, Project1: Project {some disj Grade0, Grade1, Grade2: Grade {
Person = Person0
teaches = Person0->Course0 + Person0->Course1 + Person0->Course2
enrolled = Person0->Course0 + Person0->Course1 + Person0->Course2
projects = Person0->Project0 + Person0->Project1 + Person0->Project2
Course = Course0 + Course1 + Course2
projects = Course1->Project1 + Course1->Project2 + Course2->Project0
grades = Course0->Person0->Grade0 + Course0->Person0->Grade1 + Course0->Person0->Grade2 + Course1->Person0->Grade0 + Course1->Person0->Grade1 + Course1->Person0->Grade2 + Course2->Person0->Grade0 + Course2->Person0->Grade1 + Course2->Person0->Grade2
Project = Project0 + Project1 + Project2
Grade = Grade0 + Grade1 + Grade2
ordering/first = Grade0
ordering/next = Grade0->Grade1 + Grade1->Grade2
Professor = Person0
Student = Person0
inv13[]
}}}}
}
run test1 for 3 but 1 steps
pred test2 {
some disj Person0: Person {some disj Course0, Course2, Course1: Course {some disj Project0, Project2, Project1: Project {some disj Grade0, Grade1, Grade2: Grade {
Person = Person0
teaches = Person0->Course0 + Person0->Course1 + Person0->Course2
enrolled = Person0->Course0 + Person0->Course1 + Person0->Course2
projects = Person0->Project0 + Person0->Project1 + Person0->Project2
Course = Course0 + Course1 + Course2
projects = Course0->Project2 + Course1->Project1 + Course2->Project0 + Course2->Project2
grades = Course0->Person0->Grade0 + Course0->Person0->Grade1 + Course0->Person0->Grade2 + Course1->Person0->Grade0 + Course1->Person0->Grade1 + Course1->Person0->Grade2 + Course2->Person0->Grade0 + Course2->Person0->Grade1 + Course2->Person0->Grade2
Project = Project0 + Project1 + Project2
Grade = Grade0 + Grade1 + Grade2
ordering/first = Grade0
ordering/next = Grade0->Grade1 + Grade1->Grade2
Professor = Person0
Student = Person0
inv13[]
}}}}
}
run test2 for 3 but 1 steps
pred test3 {
some disj Person0: Person {some disj Course0, Course2, Course1: Course {some disj Project0, Project2, Project1: Project {some disj Grade0, Grade1, Grade2: Grade {
Person = Person0
teaches = Person0->Course0 + Person0->Course1 + Person0->Course2
enrolled = Person0->Course0 + Person0->Course1 + Person0->Course2
projects = Person0->Project0 + Person0->Project1 + Person0->Project2
Course = Course0 + Course1 + Course2
projects = Course1->Project1 + Course1->Project2 + Course2->Project0
grades = Course0->Person0->Grade0 + Course0->Person0->Grade1 + Course0->Person0->Grade2 + Course1->Person0->Grade0 + Course1->Person0->Grade1 + Course1->Person0->Grade2 + Course2->Person0->Grade0 + Course2->Person0->Grade1
Project = Project0 + Project1 + Project2
Grade = Grade0 + Grade1 + Grade2
ordering/first = Grade0
ordering/next = Grade0->Grade1 + Grade1->Grade2
Professor = Person0
Student = Person0
inv13[]
}}}}
}
run test3 for 3 but 1 steps
pred test4 {
some disj Person0: Person {some disj Course0, Course2, Course1: Course {some disj Project0, Project2, Project1: Project {some disj Grade0, Grade1, Grade2: Grade {
Person = Person0
teaches = Person0->Course0 + Person0->Course1 + Person0->Course2
enrolled = Person0->Course0 + Person0->Course1 + Person0->Course2
projects = Person0->Project0 + Person0->Project1 + Person0->Project2
Course = Course0 + Course1 + Course2
projects = Course0->Project2 + Course1->Project1 + Course2->Project0 + Course2->Project2
grades = Course0->Person0->Grade0 + Course0->Person0->Grade1 + Course0->Person0->Grade2 + Course1->Person0->Grade0 + Course1->Person0->Grade1 + Course1->Person0->Grade2 + Course2->Person0->Grade0 + Course2->Person0->Grade1
Project = Project0 + Project1 + Project2
Grade = Grade0 + Grade1 + Grade2
ordering/first = Grade0
ordering/next = Grade0->Grade1 + Grade1->Grade2
Professor = Person0
Student = Person0
inv13[]
}}}}
}
run test4 for 3 but 1 steps
pred test5 {
some disj Person0: Person {some disj Course0, Course2, Course1: Course {some disj Project0, Project2, Project1: Project {some disj Grade0, Grade1, Grade2: Grade {
Person = Person0
teaches = Person0->Course0 + Person0->Course1 + Person0->Course2
enrolled = Person0->Course0 + Person0->Course1 + Person0->Course2
projects = Person0->Project0 + Person0->Project1 + Person0->Project2
Course = Course0 + Course1 + Course2
projects = Course0->Project2 + Course1->Project2 + Course2->Project0 + Course2->Project1 + Course2->Project2
grades = Course0->Person0->Grade0 + Course0->Person0->Grade1 + Course0->Person0->Grade2 + Course1->Person0->Grade0 + Course1->Person0->Grade1 + Course1->Person0->Grade2 + Course2->Person0->Grade0 + Course2->Person0->Grade1
Project = Project0 + Project1 + Project2
Grade = Grade0 + Grade1 + Grade2
ordering/first = Grade0
ordering/next = Grade0->Grade1 + Grade1->Grade2
Professor = Person0
Student = Person0
inv13[]
}}}}
}
run test5 for 3 but 1 steps
pred test6 {
some disj Person0, Person1: Person {some disj Course0, Course2, Course1: Course {some disj Project0, Project2, Project1: Project {some disj Grade0, Grade1, Grade2: Grade {
Person = Person0 + Person1
teaches = Person1->Course0 + Person1->Course1 + Person1->Course2
enrolled = Person1->Course0 + Person1->Course1 + Person1->Course2
projects = Person0->Project0 + Person0->Project1 + Person1->Project2
Course = Course0 + Course1 + Course2
projects = Course0->Project1 + Course0->Project2 + Course1->Project0 + Course2->Project0 + Course2->Project2
grades = Course0->Person1->Grade0 + Course0->Person1->Grade1 + Course0->Person1->Grade2 + Course1->Person0->Grade2 + Course1->Person1->Grade0 + Course1->Person1->Grade1 + Course2->Person0->Grade2 + Course2->Person1->Grade0 + Course2->Person1->Grade1 + Course2->Person1->Grade2
Project = Project0 + Project1 + Project2
Grade = Grade0 + Grade1 + Grade2
ordering/first = Grade0
ordering/next = Grade0->Grade1 + Grade1->Grade2
Professor = Person1
Student = Person1
inv13[]
}}}}
}
run test6 for 3 but 1 steps
pred test7 {
some disj Person0, Person1: Person {some disj Course0, Course2, Course1: Course {some disj Project0, Project2, Project1: Project {some disj Grade0, Grade1, Grade2: Grade {
Person = Person0 + Person1
teaches = Person1->Course0 + Person1->Course1 + Person1->Course2
enrolled = Person1->Course0 + Person1->Course1 + Person1->Course2
projects = Person1->Project0 + Person1->Project1 + Person1->Project2
Course = Course0 + Course1 + Course2
projects = Course1->Project2 + Course2->Project2
grades = Course0->Person1->Grade0 + Course0->Person1->Grade1 + Course0->Person1->Grade2 + Course1->Person1->Grade0 + Course1->Person1->Grade1 + Course1->Person1->Grade2 + Course2->Person0->Grade0 + Course2->Person0->Grade2 + Course2->Person1->Grade1 + Course2->Person1->Grade2
Project = Project0 + Project1 + Project2
Grade = Grade0 + Grade1 + Grade2
ordering/first = Grade0
ordering/next = Grade0->Grade1 + Grade1->Grade2
Professor = Person1
Student = Person0
inv13[]
}}}}
}
run test7 for 3 but 1 steps
pred test8 {
some disj Person0, Person1: Person {some disj Course0, Course2, Course1: Course {some disj Project0, Project2, Project1: Project {some disj Grade0, Grade1, Grade2: Grade {
Person = Person0 + Person1
teaches = Person1->Course0 + Person1->Course1 + Person1->Course2
enrolled = Person1->Course0 + Person1->Course1 + Person1->Course2
projects = Person1->Project0 + Person1->Project1 + Person1->Project2
Course = Course0 + Course1 + Course2
projects = Course1->Project2 + Course2->Project1
grades = Course0->Person1->Grade0 + Course0->Person1->Grade1 + Course0->Person1->Grade2 + Course1->Person1->Grade0 + Course1->Person1->Grade1 + Course1->Person1->Grade2 + Course2->Person0->Grade2 + Course2->Person1->Grade0 + Course2->Person1->Grade1 + Course2->Person1->Grade2
Project = Project0 + Project1 + Project2
Grade = Grade0 + Grade1 + Grade2
ordering/first = Grade0
ordering/next = Grade0->Grade1 + Grade1->Grade2
Professor = Person1
Student = Person0
inv13[]
}}}}
}
run test8 for 3 but 1 steps
pred test9 {
some disj Person0, Person1: Person {some disj Course0, Course2, Course1: Course {some disj Project0, Project2, Project1: Project {some disj Grade0, Grade1, Grade2: Grade {
Person = Person0 + Person1
teaches = Person1->Course0 + Person1->Course1 + Person1->Course2
enrolled = Person1->Course0 + Person1->Course1 + Person1->Course2
projects = Person0->Project1 + Person1->Project0 + Person1->Project2
Course = Course0 + Course1 + Course2
projects = Course0->Project2 + Course1->Project1 + Course2->Project1 + Course2->Project2
grades = Course0->Person1->Grade0 + Course0->Person1->Grade1 + Course0->Person1->Grade2 + Course1->Person1->Grade0 + Course1->Person1->Grade1 + Course1->Person1->Grade2 + Course2->Person1->Grade0 + Course2->Person1->Grade1 + Course2->Person1->Grade2
Project = Project0 + Project1 + Project2
Grade = Grade0 + Grade1 + Grade2
ordering/first = Grade0
ordering/next = Grade0->Grade1 + Grade1->Grade2
Professor = Person1
Student = Person1
inv13[]
}}}}
}
run test9 for 3 but 1 steps
pred test10 {
some disj Person0, Person1: Person {some disj Course0, Course2, Course1: Course {some disj Project0, Project2, Project1: Project {some disj Grade0, Grade1, Grade2: Grade {
Person = Person0 + Person1
teaches = Person1->Course0 + Person1->Course1 + Person1->Course2
enrolled = Person0->Course2 + Person1->Course0 + Person1->Course1
projects = Person1->Project0 + Person1->Project1 + Person1->Project2
Course = Course0 + Course1 + Course2
projects = Course1->Project2 + Course2->Project2
grades = Course0->Person1->Grade0 + Course0->Person1->Grade1 + Course0->Person1->Grade2 + Course1->Person1->Grade0 + Course1->Person1->Grade1 + Course1->Person1->Grade2 + Course2->Person0->Grade2 + Course2->Person1->Grade0 + Course2->Person1->Grade1 + Course2->Person1->Grade2
Project = Project0 + Project1 + Project2
Grade = Grade0 + Grade1 + Grade2
ordering/first = Grade0
ordering/next = Grade0->Grade1 + Grade1->Grade2
Professor = Person1
Student = Person0
inv13[]
}}}}
}
run test10 for 3 but 1 steps
