open util/ordering [Grade] as ordering

pred test1 {
some disj Person0, Person1: Person {some disj Course0, Course2, Course1: Course {some disj Project0, Project1: Project {some disj Grade0, Grade1, Grade2: Grade {
Person = Person0 + Person1
teaches = Person0->Course0 + Person0->Course1 + Person1->Course0 + Person1->Course2
enrolled = Person0->Course1 + Person1->Course0 + Person1->Course2
projects = Person0->Project1
Course = Course0 + Course1 + Course2
projects = Course2->Project1
grades = Course0->Person0->Grade0 + Course0->Person0->Grade1 + Course0->Person0->Grade2 + Course1->Person1->Grade0 + Course1->Person1->Grade1 + Course1->Person1->Grade2
Project = Project0 + Project1
Grade = Grade0 + Grade1 + Grade2
ordering/first = Grade0
ordering/next = Grade0->Grade1 + Grade1->Grade2
Professor = Person0 + Person1
Student = Person1
inv9[]
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
grades = Course0->Person0->Grade0 + Course0->Person0->Grade1 + Course0->Person0->Grade2 + Course1->Person0->Grade0 + Course1->Person0->Grade1 + Course1->Person0->Grade2 + Course2->Person0->Grade0 + Course2->Person0->Grade1
Project = Project0 + Project1 + Project2
Grade = Grade0 + Grade1 + Grade2
ordering/first = Grade0
ordering/next = Grade0->Grade1 + Grade1->Grade2
Professor = Person0
Student = Person0
inv9[]
}}}}
}
run test2 for 3 but 1 steps
pred test3 {
some disj Person0, Person1: Person {some disj Course0, Course2, Course1: Course {some disj Project0, Project1: Project {some disj Grade0, Grade1, Grade2: Grade {
Person = Person0 + Person1
teaches = Person0->Course1 + Person1->Course2
enrolled = Person0->Course0 + Person0->Course1 + Person1->Course2
projects = Person0->Project1 + Person1->Project0 + Person1->Project1
Course = Course0 + Course1 + Course2
projects = Course2->Project1
grades = Course0->Person0->Grade0 + Course0->Person0->Grade1 + Course0->Person0->Grade2 + Course2->Person1->Grade0 + Course2->Person1->Grade1
Project = Project0 + Project1
Grade = Grade0 + Grade1 + Grade2
ordering/first = Grade0
ordering/next = Grade0->Grade1 + Grade1->Grade2
Professor = Person0 + Person1
Student = Person1
inv9[]
}}}}
}
run test3 for 3 but 1 steps
pred test4 {
some disj Person0, Person1: Person {some disj Course0, Course2, Course1: Course {some disj Project0, Project2, Project1: Project {some disj Grade0, Grade1, Grade2: Grade {
Person = Person0 + Person1
teaches = Person0->Course0 + Person1->Course1 + Person1->Course2
enrolled = Person0->Course1 + Person1->Course1 + Person1->Course2
projects = Person0->Project1 + Person1->Project0 + Person1->Project2
Course = Course0 + Course1 + Course2
projects = Course2->Project2
grades = Course0->Person0->Grade0 + Course1->Person1->Grade0 + Course1->Person1->Grade1 + Course1->Person1->Grade2 + Course2->Person1->Grade0 + Course2->Person1->Grade1
Project = Project0 + Project1 + Project2
Grade = Grade0 + Grade1 + Grade2
ordering/first = Grade0
ordering/next = Grade0->Grade1 + Grade1->Grade2
no Professor
no Professor' --loop state
Student = Person1
inv9[]
}}}}
}
run test4 for 3 but 1 steps
pred test5 {
some disj Person0, Person1: Person {some disj Course0, Course2, Course1: Course {some disj Project0, Project2, Project1: Project {some disj Grade0, Grade1, Grade2: Grade {
Person = Person0 + Person1
teaches = Person0->Course1 + Person1->Course0 + Person1->Course2
enrolled = Person0->Course1 + Person1->Course0 + Person1->Course2
projects = Person0->Project2 + Person1->Project0 + Person1->Project1
Course = Course0 + Course1 + Course2
projects = Course2->Project0 + Course2->Project1 + Course2->Project2
grades = Course0->Person1->Grade0 + Course0->Person1->Grade1 + Course0->Person1->Grade2 + Course1->Person0->Grade0 + Course2->Person1->Grade0 + Course2->Person1->Grade1
Project = Project0 + Project1 + Project2
Grade = Grade0 + Grade1 + Grade2
ordering/first = Grade0
ordering/next = Grade0->Grade1 + Grade1->Grade2
no Professor
no Professor' --loop state
Student = Person1
inv9[]
}}}}
}
run test5 for 3 but 1 steps
pred test6 {
some disj Person0, Person1: Person {some disj Course0, Course2, Course1: Course {some disj Project0, Project1: Project {some disj Grade0, Grade1, Grade2: Grade {
Person = Person0 + Person1
teaches = Person0->Course1 + Person1->Course0 + Person1->Course1 + Person1->Course2
enrolled = Person1->Course0 + Person1->Course1 + Person1->Course2
projects = Person0->Project1 + Person1->Project0
Course = Course0 + Course1 + Course2
projects = Course2->Project1
grades = Course0->Person0->Grade0 + Course0->Person0->Grade1 + Course0->Person0->Grade2 + Course1->Person1->Grade0 + Course1->Person1->Grade1 + Course1->Person1->Grade2 + Course2->Person1->Grade0 + Course2->Person1->Grade1
Project = Project0 + Project1
Grade = Grade0 + Grade1 + Grade2
ordering/first = Grade0
ordering/next = Grade0->Grade1 + Grade1->Grade2
no Professor
no Professor' --loop state
Student = Person1
inv9[]
}}}}
}
run test6 for 3 but 1 steps
pred test7 {
some disj Person0, Person1: Person {some disj Course0, Course2, Course1: Course {some disj Project0, Project1: Project {some disj Grade0, Grade1, Grade2: Grade {
Person = Person0 + Person1
teaches = Person0->Course1 + Person1->Course0 + Person1->Course1 + Person1->Course2
enrolled = Person1->Course1 + Person1->Course2
projects = Person0->Project1 + Person1->Project0
Course = Course0 + Course1 + Course2
projects = Course2->Project1
grades = Course0->Person0->Grade0 + Course0->Person0->Grade1 + Course0->Person0->Grade2 + Course1->Person1->Grade0 + Course1->Person1->Grade1 + Course1->Person1->Grade2 + Course2->Person1->Grade0 + Course2->Person1->Grade1
Project = Project0 + Project1
Grade = Grade0 + Grade1 + Grade2
ordering/first = Grade0
ordering/next = Grade0->Grade1 + Grade1->Grade2
Professor = Person1
Student = Person1
inv9[]
}}}}
}
run test7 for 3 but 1 steps
pred test8 {
some disj Person0, Person1: Person {some disj Course0, Course2, Course1: Course {some disj Project0, Project1: Project {some disj Grade0, Grade1, Grade2: Grade {
Person = Person0 + Person1
teaches = Person0->Course1 + Person1->Course0 + Person1->Course1 + Person1->Course2
enrolled = Person1->Course1 + Person1->Course2
projects = Person0->Project1 + Person1->Project0
Course = Course0 + Course1 + Course2
projects = Course2->Project1
grades = Course0->Person0->Grade0 + Course0->Person0->Grade1 + Course0->Person0->Grade2 + Course1->Person1->Grade0 + Course1->Person1->Grade1 + Course1->Person1->Grade2 + Course2->Person1->Grade0 + Course2->Person1->Grade1
Project = Project0 + Project1
Grade = Grade0 + Grade1 + Grade2
ordering/first = Grade0
ordering/next = Grade0->Grade1 + Grade1->Grade2
Professor = Person1
no Student
no Student' --loop state
inv9[]
}}}}
}
run test8 for 3 but 1 steps
pred test9 {
some disj Person0, Person1: Person {some disj Course0, Course2, Course1: Course {some disj Project0, Project1: Project {some disj Grade0, Grade1, Grade2: Grade {
Person = Person0 + Person1
teaches = Person0->Course1 + Person1->Course0 + Person1->Course1 + Person1->Course2
enrolled = Person1->Course0 + Person1->Course1 + Person1->Course2
projects = Person0->Project1 + Person1->Project0
Course = Course0 + Course1 + Course2
projects = Course2->Project1
grades = Course0->Person0->Grade0 + Course0->Person0->Grade1 + Course1->Person1->Grade0 + Course1->Person1->Grade1 + Course1->Person1->Grade2 + Course2->Person1->Grade0 + Course2->Person1->Grade1
Project = Project0 + Project1
Grade = Grade0 + Grade1 + Grade2
ordering/first = Grade0
ordering/next = Grade0->Grade1 + Grade1->Grade2
Professor = Person1
Student = Person1
inv9[]
}}}}
}
run test9 for 3 but 1 steps
pred test10 {
some disj Person0, Person1: Person {some disj Course0, Course2, Course1: Course {some disj Project0, Project1: Project {some disj Grade0, Grade1, Grade2: Grade {
Person = Person0 + Person1
teaches = Person0->Course1 + Person1->Course0 + Person1->Course1 + Person1->Course2
enrolled = Person1->Course0 + Person1->Course1 + Person1->Course2
projects = Person0->Project1 + Person1->Project0
Course = Course0 + Course1 + Course2
projects = Course2->Project1
grades = Course0->Person0->Grade0 + Course0->Person0->Grade1 + Course0->Person0->Grade2 + Course1->Person1->Grade0 + Course1->Person1->Grade1 + Course1->Person1->Grade2 + Course2->Person1->Grade0 + Course2->Person1->Grade1
Project = Project0 + Project1
Grade = Grade0 + Grade1 + Grade2
ordering/first = Grade0
ordering/next = Grade0->Grade1 + Grade1->Grade2
Professor = Person1
Student = Person0 + Person1
inv9[]
}}}}
}
run test10 for 3 but 1 steps
pred test11 {
some disj Person0, Person1: Person {some disj Course0, Course2, Course1: Course {some disj Project0, Project2, Project1: Project {some disj Grade0, Grade1, Grade2: Grade {
Person = Person0 + Person1
teaches = Person0->Course1 + Person1->Course0 + Person1->Course1 + Person1->Course2
enrolled = Person0->Course1 + Person0->Course2 + Person1->Course1
projects = Person0->Project1 + Person0->Project2
Course = Course0 + Course1 + Course2
projects = Course2->Project2
grades = Course0->Person1->Grade0 + Course0->Person1->Grade1 + Course0->Person1->Grade2 + Course1->Person0->Grade0 + Course1->Person0->Grade1 + Course1->Person1->Grade2 + Course2->Person1->Grade0 + Course2->Person1->Grade1
Project = Project0 + Project1 + Project2
Grade = Grade0 + Grade1 + Grade2
ordering/first = Grade0
ordering/next = Grade0->Grade1 + Grade1->Grade2
Professor = Person0 + Person1
Student = Person1
inv9[]
}}}}
}
run test11 for 3 but 1 steps
pred test12 {
some disj Person0, Person1: Person {some disj Course0, Course2, Course1: Course {some disj Project0, Project1: Project {some disj Grade0, Grade1, Grade2: Grade {
Person = Person0 + Person1
teaches = Person0->Course0 + Person0->Course1 + Person1->Course0 + Person1->Course2
enrolled = Person0->Course1 + Person0->Course2 + Person1->Course2
projects = Person0->Project1
Course = Course0 + Course1 + Course2
projects = Course2->Project1
grades = Course0->Person1->Grade0 + Course0->Person1->Grade1 + Course0->Person1->Grade2 + Course2->Person1->Grade0 + Course2->Person1->Grade1
Project = Project0 + Project1
Grade = Grade0 + Grade1 + Grade2
ordering/first = Grade0
ordering/next = Grade0->Grade1 + Grade1->Grade2
Professor = Person1
Student = Person1
inv9[]
}}}}
}
run test12 for 3 but 1 steps
pred test13 {
some disj Person0, Person1: Person {some disj Course0, Course2, Course1: Course {some disj Project0, Project1: Project {some disj Grade0, Grade1, Grade2: Grade {
Person = Person0 + Person1
teaches = Person0->Course1 + Person1->Course0 + Person1->Course1 + Person1->Course2
enrolled = Person0->Course0 + Person0->Course1 + Person1->Course2
projects = Person0->Project1 + Person1->Project0 + Person1->Project1
Course = Course0 + Course1 + Course2
projects = Course2->Project1
grades = Course0->Person1->Grade0 + Course0->Person1->Grade1 + Course0->Person1->Grade2 + Course1->Person1->Grade0 + Course1->Person1->Grade1 + Course1->Person1->Grade2 + Course2->Person1->Grade0 + Course2->Person1->Grade1
Project = Project0 + Project1
Grade = Grade0 + Grade1 + Grade2
ordering/first = Grade0
ordering/next = Grade0->Grade1 + Grade1->Grade2
Professor = Person0 + Person1
Student = Person1
inv9[]
}}}}
}
run test13 for 3 but 1 steps
pred test14 {
some disj Person0, Person1: Person {some disj Course0, Course2, Course1: Course {some disj Project0, Project1: Project {some disj Grade0, Grade1, Grade2: Grade {
Person = Person0 + Person1
teaches = Person0->Course0 + Person0->Course1 + Person1->Course0 + Person1->Course2
enrolled = Person0->Course1 + Person1->Course0 + Person1->Course2
no projects
Course = Course0 + Course1 + Course2
projects = Course2->Project1
grades = Course0->Person1->Grade0 + Course0->Person1->Grade1 + Course0->Person1->Grade2 + Course1->Person0->Grade0 + Course1->Person0->Grade1 + Course1->Person0->Grade2 + Course2->Person1->Grade0 + Course2->Person1->Grade1
Project = Project0 + Project1
Grade = Grade0 + Grade1 + Grade2
ordering/first = Grade0
ordering/next = Grade0->Grade1 + Grade1->Grade2
Professor = Person0 + Person1
Student = Person1
inv9[]
}}}}
}
run test14 for 3 but 1 steps
pred test15 {
some disj Person0, Person1: Person {some disj Course0, Course2, Course1: Course {some disj Project0, Project2, Project1: Project {some disj Grade0, Grade1, Grade2: Grade {
Person = Person0 + Person1
teaches = Person0->Course0 + Person0->Course1 + Person1->Course1 + Person1->Course2
enrolled = Person1->Course1
projects = Person0->Project1 + Person0->Project2 + Person1->Project0 + Person1->Project2
Course = Course0 + Course1 + Course2
projects = Course2->Project0 + Course2->Project1 + Course2->Project2
grades = Course1->Person1->Grade0 + Course1->Person1->Grade1 + Course1->Person1->Grade2 + Course2->Person0->Grade0 + Course2->Person0->Grade1
Project = Project0 + Project1 + Project2
Grade = Grade0 + Grade1 + Grade2
ordering/first = Grade0
ordering/next = Grade0->Grade1 + Grade1->Grade2
Professor = Person0 + Person1
Student = Person1
inv9[]
}}}}
}
run test15 for 3 but 1 steps
pred test16 {
some disj Person0, Person1: Person {some disj Course0, Course2, Course1: Course {some disj Project0, Project1: Project {some disj Grade0, Grade1, Grade2: Grade {
Person = Person0 + Person1
teaches = Person0->Course1 + Person1->Course0 + Person1->Course1 + Person1->Course2
enrolled = Person0->Course0 + Person0->Course1 + Person1->Course2
projects = Person1->Project0 + Person1->Project1
Course = Course0 + Course1 + Course2
projects = Course2->Project1
grades = Course0->Person1->Grade0 + Course0->Person1->Grade1 + Course0->Person1->Grade2 + Course1->Person1->Grade0 + Course1->Person1->Grade1 + Course1->Person1->Grade2 + Course2->Person1->Grade0 + Course2->Person1->Grade1
Project = Project0 + Project1
Grade = Grade0 + Grade1 + Grade2
ordering/first = Grade0
ordering/next = Grade0->Grade1 + Grade1->Grade2
Professor = Person0 + Person1
Student = Person1
inv9[]
}}}}
}
run test16 for 3 but 1 steps
pred test17 {
some disj Person0, Person1: Person {some disj Course0, Course2, Course1: Course {some disj Project0, Project2, Project1: Project {some disj Grade0, Grade1, Grade2: Grade {
Person = Person0 + Person1
teaches = Person0->Course1 + Person1->Course0 + Person1->Course2
enrolled = Person0->Course1 + Person0->Course2 + Person1->Course0
projects = Person1->Project0 + Person1->Project1 + Person1->Project2
Course = Course0 + Course1 + Course2
projects = Course0->Project2 + Course1->Project1 + Course2->Project0 + Course2->Project2
grades = Course0->Person1->Grade0 + Course0->Person1->Grade1 + Course0->Person1->Grade2 + Course1->Person1->Grade0 + Course1->Person1->Grade1 + Course1->Person1->Grade2 + Course2->Person1->Grade0 + Course2->Person1->Grade1
Project = Project0 + Project1 + Project2
Grade = Grade0 + Grade1 + Grade2
ordering/first = Grade0
ordering/next = Grade0->Grade1 + Grade1->Grade2
Professor = Person0 + Person1
Student = Person1
inv9[]
}}}}
}
run test17 for 3 but 1 steps
pred test18 {
some disj Person0, Person1: Person {some disj Course0, Course2, Course1: Course {some disj Project0, Project2, Project1: Project {some disj Grade0, Grade1, Grade2: Grade {
Person = Person0 + Person1
teaches = Person0->Course1 + Person1->Course0
enrolled = Person0->Course0 + Person0->Course1
projects = Person0->Project1 + Person0->Project2 + Person1->Project0 + Person1->Project2
Course = Course0 + Course1 + Course2
projects = Course2->Project0 + Course2->Project1 + Course2->Project2
grades = Course0->Person0->Grade0 + Course0->Person0->Grade1 + Course0->Person0->Grade2 + Course1->Person1->Grade0 + Course1->Person1->Grade1 + Course1->Person1->Grade2 + Course2->Person1->Grade0 + Course2->Person1->Grade1
Project = Project0 + Project1 + Project2
Grade = Grade0 + Grade1 + Grade2
ordering/first = Grade0
ordering/next = Grade0->Grade1 + Grade1->Grade2
Professor = Person0 + Person1
Student = Person1
inv9[]
}}}}
}
run test18 for 3 but 1 steps
pred test19 {
some disj Person0, Person1: Person {some disj Course0, Course2, Course1: Course {some disj Project0, Project2, Project1: Project {some disj Grade0, Grade1, Grade2: Grade {
Person = Person0 + Person1
teaches = Person0->Course1 + Person1->Course0
enrolled = Person0->Course0 + Person0->Course1
projects = Person0->Project1 + Person0->Project2 + Person1->Project0 + Person1->Project2
Course = Course0 + Course1 + Course2
projects = Course2->Project0 + Course2->Project1 + Course2->Project2
grades = Course1->Person1->Grade0 + Course1->Person1->Grade1 + Course1->Person1->Grade2 + Course2->Person1->Grade0 + Course2->Person1->Grade1
Project = Project0 + Project1 + Project2
Grade = Grade0 + Grade1 + Grade2
ordering/first = Grade0
ordering/next = Grade0->Grade1 + Grade1->Grade2
Professor = Person0 + Person1
Student = Person1
inv9[]
}}}}
}
run test19 for 3 but 1 steps
pred test20 {
some disj Person0, Person1: Person {some disj Course0, Course2, Course1: Course {some disj Project0, Project1: Project {some disj Grade0, Grade1, Grade2: Grade {
Person = Person0 + Person1
teaches = Person0->Course2 + Person1->Course1
enrolled = Person0->Course1
projects = Person0->Project1 + Person1->Project0 + Person1->Project1
Course = Course0 + Course1 + Course2
projects = Course2->Project1
grades = Course2->Person1->Grade0 + Course2->Person1->Grade1
Project = Project0 + Project1
Grade = Grade0 + Grade1 + Grade2
ordering/first = Grade0
ordering/next = Grade0->Grade1 + Grade1->Grade2
Professor = Person0 + Person1
Student = Person1
inv9[]
}}}}
}
run test20 for 3 but 1 steps
pred test21 {
some disj Person0, Person1: Person {some disj Course0, Course2, Course1: Course {some disj Project0, Project1: Project {some disj Grade0, Grade1, Grade2: Grade {
Person = Person0 + Person1
teaches = Person0->Course0 + Person1->Course0 + Person1->Course1 + Person1->Course2
enrolled = Person0->Course2 + Person1->Course1 + Person1->Course2
projects = Person0->Project1 + Person1->Project0 + Person1->Project1
Course = Course0 + Course1 + Course2
projects = Course2->Project1
grades = Course0->Person1->Grade0 + Course0->Person1->Grade1 + Course0->Person1->Grade2 + Course1->Person1->Grade0 + Course2->Person1->Grade0 + Course2->Person1->Grade1
Project = Project0 + Project1
Grade = Grade0 + Grade1 + Grade2
ordering/first = Grade0
ordering/next = Grade0->Grade1 + Grade1->Grade2
Professor = Person0 + Person1
Student = Person1
inv9[]
}}}}
}
run test21 for 3 but 1 steps
pred test22 {
some disj Person0, Person1: Person {some disj Course0, Course2, Course1: Course {some disj Project0, Project1: Project {some disj Grade0, Grade1, Grade2: Grade {
Person = Person0 + Person1
teaches = Person0->Course1 + Person1->Course0 + Person1->Course1 + Person1->Course2
enrolled = Person0->Course0 + Person0->Course1
projects = Person0->Project1 + Person1->Project0 + Person1->Project1
Course = Course0 + Course1 + Course2
projects = Course2->Project1
grades = Course0->Person1->Grade0 + Course0->Person1->Grade1 + Course0->Person1->Grade2 + Course1->Person1->Grade0 + Course2->Person1->Grade0 + Course2->Person1->Grade1
Project = Project0 + Project1
Grade = Grade0 + Grade1 + Grade2
ordering/first = Grade0
ordering/next = Grade0->Grade1 + Grade1->Grade2
Professor = Person0 + Person1
Student = Person1
inv9[]
}}}}
}
run test22 for 3 but 1 steps
pred test23 {
some disj Person0, Person1: Person {some disj Course0, Course2, Course1: Course {some disj Project0, Project1: Project {some disj Grade0, Grade1, Grade2: Grade {
Person = Person0 + Person1
teaches = Person0->Course0 + Person0->Course1 + Person1->Course2
enrolled = Person0->Course1 + Person0->Course2
projects = Person0->Project1 + Person1->Project0 + Person1->Project1
Course = Course0 + Course1 + Course2
projects = Course2->Project1
grades = Course2->Person1->Grade0 + Course2->Person1->Grade1
Project = Project0 + Project1
Grade = Grade0 + Grade1 + Grade2
ordering/first = Grade0
ordering/next = Grade0->Grade1 + Grade1->Grade2
Professor = Person0 + Person1
Student = Person1
inv9[]
}}}}
}
run test23 for 3 but 1 steps
pred test24 {
some disj Person0, Person1: Person {some disj Course0, Course2, Course1: Course {some disj Project0, Project1: Project {some disj Grade0, Grade1, Grade2: Grade {
Person = Person0 + Person1
teaches = Person0->Course1 + Person0->Course2 + Person1->Course1
enrolled = Person0->Course0 + Person0->Course1 + Person0->Course2
projects = Person0->Project1 + Person1->Project0 + Person1->Project1
Course = Course0 + Course1 + Course2
projects = Course2->Project1
grades = Course0->Person0->Grade0 + Course0->Person0->Grade1 + Course0->Person0->Grade2 + Course1->Person0->Grade0 + Course2->Person1->Grade0 + Course2->Person1->Grade1
Project = Project0 + Project1
Grade = Grade0 + Grade1 + Grade2
ordering/first = Grade0
ordering/next = Grade0->Grade1 + Grade1->Grade2
Professor = Person0 + Person1
Student = Person1
inv9[]
}}}}
}
run test24 for 3 but 1 steps
pred test25 {
some disj Person0, Person1: Person {some disj Course0, Course1: Course {some disj Project0, Project1: Project {some disj Grade0, Grade1, Grade2: Grade {
Person = Person0 + Person1
teaches = Person0->Course0 + Person1->Course1
enrolled = Person1->Course0
projects = Person0->Project1 + Person1->Project0 + Person1->Project1
Course = Course0 + Course1
projects = Course1->Project1
grades = Course1->Person1->Grade0 + Course1->Person1->Grade1
Project = Project0 + Project1
Grade = Grade0 + Grade1 + Grade2
ordering/first = Grade0
ordering/next = Grade0->Grade1 + Grade1->Grade2
Professor = Person0 + Person1
Student = Person1
inv9[]
}}}}
}
run test25 for 3 but 1 steps
pred test26 {
some disj Person0, Person1: Person {some disj Course0: Course {some disj Project0, Project1: Project {some disj Grade0, Grade1, Grade2: Grade {
Person = Person0 + Person1
teaches = Person0->Course0 + Person1->Course0
enrolled = Person0->Course0 + Person1->Course0
projects = Person0->Project1 + Person1->Project0 + Person1->Project1
Course = Course0
projects = Course0->Project1
grades = Course0->Person1->Grade0 + Course0->Person1->Grade1
Project = Project0 + Project1
Grade = Grade0 + Grade1 + Grade2
ordering/first = Grade0
ordering/next = Grade0->Grade1 + Grade1->Grade2
Professor = Person0 + Person1
Student = Person1
inv9[]
}}}}
}
run test26 for 3 but 1 steps
pred test27 {
some disj Person0, Person1: Person {some disj Course0: Course {some disj Project0, Project2, Project1: Project {some disj Grade0, Grade1, Grade2: Grade {
Person = Person0 + Person1
teaches = Person0->Course0 + Person1->Course0
enrolled = Person1->Course0
projects = Person0->Project1 + Person1->Project0 + Person1->Project2
Course = Course0
projects = Course0->Project2
grades = Course0->Person1->Grade0 + Course0->Person1->Grade1
Project = Project0 + Project1 + Project2
Grade = Grade0 + Grade1 + Grade2
ordering/first = Grade0
ordering/next = Grade0->Grade1 + Grade1->Grade2
Professor = Person0 + Person1
Student = Person1
inv9[]
}}}}
}
run test27 for 3 but 1 steps
pred test28 {
some disj Person0, Person1: Person {some disj Course0, Course1: Course {some disj Project0, Project2, Project1: Project {some disj Grade0, Grade1, Grade2: Grade {
Person = Person0 + Person1
teaches = Person0->Course1 + Person1->Course0 + Person1->Course1
enrolled = Person0->Course0 + Person1->Course1
projects = Person0->Project1 + Person1->Project0 + Person1->Project2
Course = Course0 + Course1
projects = Course1->Project2
grades = Course1->Person1->Grade0 + Course1->Person1->Grade1
Project = Project0 + Project1 + Project2
Grade = Grade0 + Grade1 + Grade2
ordering/first = Grade0
ordering/next = Grade0->Grade1 + Grade1->Grade2
Professor = Person0 + Person1
Student = Person1
inv9[]
}}}}
}
run test28 for 3 but 1 steps
pred test29 {
some disj Person0, Person1: Person {some disj Course0, Course1: Course {some disj Project0, Project2, Project1: Project {some disj Grade0, Grade1, Grade2: Grade {
Person = Person0 + Person1
teaches = Person0->Course1 + Person1->Course1
enrolled = Person1->Course1
projects = Person0->Project2 + Person1->Project0 + Person1->Project1 + Person1->Project2
Course = Course0 + Course1
projects = Course0->Project1 + Course0->Project2 + Course1->Project0
no grades
Project = Project0 + Project1 + Project2
Grade = Grade0 + Grade1 + Grade2
ordering/first = Grade0
ordering/next = Grade0->Grade1 + Grade1->Grade2
Professor = Person0 + Person1
Student = Person1
inv9[]
}}}}
}
run test29 for 3 but 1 steps
pred test30 {
some disj Person0, Person1: Person {some disj Course0, Course2, Course1: Course {some disj Project0, Project1: Project {some disj Grade0, Grade1, Grade2: Grade {
Person = Person0 + Person1
teaches = Person0->Course0 + Person1->Course0 + Person1->Course2
enrolled = Person0->Course0 + Person0->Course1 + Person1->Course1 + Person1->Course2
projects = Person0->Project1 + Person1->Project0
Course = Course0 + Course1 + Course2
projects = Course2->Project1
grades = Course0->Person1->Grade0 + Course0->Person1->Grade1 + Course0->Person1->Grade2 + Course1->Person1->Grade0 + Course1->Person1->Grade2 + Course2->Person1->Grade0 + Course2->Person1->Grade1
Project = Project0 + Project1
Grade = Grade0 + Grade1 + Grade2
ordering/first = Grade0
ordering/next = Grade0->Grade1 + Grade1->Grade2
Professor = Person0 + Person1
Student = Person1
inv9[]
}}}}
}
run test30 for 3 but 1 steps
pred test31 {
some disj Person0, Person1: Person {some disj Course0, Course2, Course1: Course {some disj Project0, Project2, Project1: Project {some disj Grade0, Grade1, Grade2: Grade {
Person = Person0 + Person1
teaches = Person0->Course1 + Person1->Course0 + Person1->Course1 + Person1->Course2
enrolled = Person1->Course1 + Person1->Course2
projects = Person0->Project1 + Person1->Project0 + Person1->Project2
Course = Course0 + Course1 + Course2
projects = Course2->Project2
grades = Course0->Person0->Grade0 + Course0->Person0->Grade1 + Course0->Person0->Grade2 + Course1->Person1->Grade0 + Course1->Person1->Grade1 + Course1->Person1->Grade2 + Course2->Person1->Grade0 + Course2->Person1->Grade1
Project = Project0 + Project1 + Project2
Grade = Grade0 + Grade1 + Grade2
ordering/first = Grade0
ordering/next = Grade0->Grade1 + Grade1->Grade2
Professor = Person0 + Person1
Student = Person1
inv9[]
}}}}
}
run test31 for 3 but 1 steps
pred test32 {
some disj Person0, Person1: Person {some disj Course0, Course1: Course {some disj Project0, Project2, Project1: Project {some disj Grade0, Grade1, Grade2: Grade {
Person = Person0 + Person1
teaches = Person0->Course0 + Person0->Course1 + Person1->Course0
no enrolled
projects = Person0->Project1 + Person1->Project0 + Person1->Project1 + Person1->Project2
Course = Course0 + Course1
projects = Course0->Project2 + Course1->Project0 + Course1->Project1
no grades
Project = Project0 + Project1 + Project2
Grade = Grade0 + Grade1 + Grade2
ordering/first = Grade0
ordering/next = Grade0->Grade1 + Grade1->Grade2
Professor = Person0 + Person1
Student = Person1
inv9[]
}}}}
}
run test32 for 3 but 1 steps
pred test33 {
some disj Person0, Person1: Person {some disj Course0, Course1: Course {some disj Project0, Project1: Project {some disj Grade0, Grade1, Grade2: Grade {
Person = Person0 + Person1
teaches = Person0->Course0 + Person0->Course1 + Person1->Course0 + Person1->Course1
enrolled = Person0->Course0
projects = Person0->Project1 + Person1->Project0 + Person1->Project1
Course = Course0 + Course1
projects = Course1->Project1
grades = Course1->Person1->Grade0 + Course1->Person1->Grade1
Project = Project0 + Project1
Grade = Grade0 + Grade1 + Grade2
ordering/first = Grade0
ordering/next = Grade0->Grade1 + Grade1->Grade2
Professor = Person0 + Person1
Student = Person1
inv9[]
}}}}
}
run test33 for 3 but 1 steps
pred test34 {
some disj Person0, Person1: Person {some disj Course0, Course2, Course1: Course {some disj Project0, Project2, Project1: Project {some disj Grade0, Grade1, Grade2: Grade {
Person = Person0 + Person1
teaches = Person0->Course0 + Person0->Course1 + Person1->Course0 + Person1->Course2
enrolled = Person1->Course2
projects = Person0->Project2 + Person1->Project0 + Person1->Project1 + Person1->Project2
Course = Course0 + Course1 + Course2
projects = Course0->Project1 + Course0->Project2 + Course1->Project0 + Course2->Project0
no grades
Project = Project0 + Project1 + Project2
Grade = Grade0 + Grade1 + Grade2
ordering/first = Grade0
ordering/next = Grade0->Grade1 + Grade1->Grade2
Professor = Person0 + Person1
Student = Person1
inv9[]
}}}}
}
run test34 for 3 but 1 steps
pred test35 {
some disj Person0, Person1: Person {some disj Course0, Course2, Course1: Course {some disj Project0, Project2, Project1: Project {some disj Grade0, Grade1, Grade2: Grade {
Person = Person0 + Person1
teaches = Person0->Course0 + Person0->Course1 + Person0->Course2 + Person1->Course1
enrolled = Person0->Course0 + Person0->Course2 + Person1->Course0
projects = Person0->Project1 + Person1->Project0 + Person1->Project2
Course = Course0 + Course1 + Course2
projects = Course1->Project2 + Course2->Project0 + Course2->Project1
grades = Course0->Person1->Grade0 + Course0->Person1->Grade1 + Course0->Person1->Grade2 + Course1->Person0->Grade0
Project = Project0 + Project1 + Project2
Grade = Grade0 + Grade1 + Grade2
ordering/first = Grade0
ordering/next = Grade0->Grade1 + Grade1->Grade2
Professor = Person0 + Person1
Student = Person1
inv9[]
}}}}
}
run test35 for 3 but 1 steps
pred test36 {
some disj Person0, Person1: Person {some disj Course0, Course2, Course1: Course {some disj Project0, Project1: Project {some disj Grade0, Grade1, Grade2: Grade {
Person = Person0 + Person1
teaches = Person0->Course1 + Person1->Course0 + Person1->Course1 + Person1->Course2
enrolled = Person1->Course0 + Person1->Course1 + Person1->Course2
projects = Person0->Project1 + Person1->Project0 + Person1->Project1
Course = Course0 + Course1 + Course2
projects = Course2->Project1
grades = Course0->Person1->Grade0 + Course0->Person1->Grade1 + Course0->Person1->Grade2 + Course1->Person1->Grade0 + Course1->Person1->Grade1 + Course1->Person1->Grade2 + Course2->Person1->Grade0 + Course2->Person1->Grade1
Project = Project0 + Project1
Grade = Grade0 + Grade1 + Grade2
ordering/first = Grade0
ordering/next = Grade0->Grade1 + Grade1->Grade2
Professor = Person0 + Person1
Student = Person1
inv9[]
}}}}
}
run test36 for 3 but 1 steps
pred test37 {
some disj Person0, Person1: Person {some disj Course0, Course2, Course1: Course {some disj Project0, Project2, Project1: Project {some disj Grade0, Grade1, Grade2: Grade {
Person = Person0 + Person1
teaches = Person0->Course0 + Person1->Course0 + Person1->Course2
enrolled = Person1->Course2
projects = Person1->Project0 + Person1->Project2
Course = Course0 + Course1 + Course2
projects = Course0->Project2 + Course1->Project1 + Course2->Project0 + Course2->Project2
grades = Course2->Person1->Grade0 + Course2->Person1->Grade1
Project = Project0 + Project1 + Project2
Grade = Grade0 + Grade1 + Grade2
ordering/first = Grade0
ordering/next = Grade0->Grade1 + Grade1->Grade2
Professor = Person0 + Person1
Student = Person1
inv9[]
}}}}
}
run test37 for 3 but 1 steps
pred test38 {
some disj Person0, Person1: Person {some disj Course0, Course2, Course1: Course {some disj Project0, Project2, Project1: Project {some disj Grade0, Grade1, Grade2: Grade {
Person = Person0 + Person1
teaches = Person0->Course0 + Person0->Course1 + Person0->Course2 + Person1->Course1
enrolled = Person1->Course2
projects = Person0->Project1 + Person0->Project2 + Person1->Project0
Course = Course0 + Course1 + Course2
projects = Course2->Project0 + Course2->Project1 + Course2->Project2
grades = Course0->Person1->Grade0 + Course0->Person1->Grade1 + Course0->Person1->Grade2 + Course1->Person1->Grade0 + Course1->Person1->Grade1 + Course1->Person1->Grade2
Project = Project0 + Project1 + Project2
Grade = Grade0 + Grade1 + Grade2
ordering/first = Grade0
ordering/next = Grade0->Grade1 + Grade1->Grade2
Professor = Person0 + Person1
Student = Person1
inv9[]
}}}}
}
run test38 for 3 but 1 steps
pred test39 {
some disj Person0, Person1: Person {some disj Course0, Course2, Course1: Course {some disj Project0, Project2, Project1: Project {some disj Grade0, Grade1, Grade2: Grade {
Person = Person0 + Person1
teaches = Person0->Course0 + Person0->Course1 + Person1->Course0 + Person1->Course2
enrolled = Person1->Course0 + Person1->Course2
projects = Person0->Project1 + Person1->Project0 + Person1->Project2
Course = Course0 + Course1 + Course2
projects = Course0->Project2 + Course1->Project1 + Course2->Project0 + Course2->Project2
grades = Course0->Person1->Grade0 + Course0->Person1->Grade1 + Course0->Person1->Grade2 + Course1->Person0->Grade0 + Course2->Person1->Grade0 + Course2->Person1->Grade1
Project = Project0 + Project1 + Project2
Grade = Grade0 + Grade1 + Grade2
ordering/first = Grade0
ordering/next = Grade0->Grade1 + Grade1->Grade2
Professor = Person0 + Person1
Student = Person1
inv9[]
}}}}
}
run test39 for 3 but 1 steps
pred test40 {
some disj Person0, Person1: Person {some disj Course0, Course2, Course1: Course {some disj Project0, Project1: Project {some disj Grade0, Grade1, Grade2: Grade {
Person = Person0 + Person1
teaches = Person0->Course1 + Person1->Course0 + Person1->Course1 + Person1->Course2
enrolled = Person1->Course0 + Person1->Course1 + Person1->Course2
projects = Person0->Project1 + Person1->Project0
Course = Course0 + Course1 + Course2
projects = Course2->Project1
grades = Course0->Person0->Grade0 + Course0->Person0->Grade1 + Course0->Person0->Grade2 + Course1->Person1->Grade0 + Course1->Person1->Grade1 + Course1->Person1->Grade2 + Course2->Person1->Grade0 + Course2->Person1->Grade1
Project = Project0 + Project1
Grade = Grade0 + Grade1 + Grade2
ordering/first = Grade0
ordering/next = Grade0->Grade1 + Grade1->Grade2
Professor = Person0 + Person1
Student = Person1
inv9[]
}}}}
}
run test40 for 3 but 1 steps
pred test41 {
some disj Person0, Person1: Person {some disj Course0: Course {some disj Project0: Project {some disj Grade0, Grade1, Grade2: Grade {
Person = Person0 + Person1
teaches = Person0->Course0 + Person1->Course0
no enrolled
projects = Person1->Project0
Course = Course0
no projects
no grades
Project = Project0
Grade = Grade0 + Grade1 + Grade2
ordering/first = Grade0
ordering/next = Grade0->Grade1 + Grade1->Grade2
Professor = Person0 + Person1
Student = Person1
inv9[]
}}}}
}
run test41 for 3 but 1 steps
pred test42 {
some disj Person0, Person1: Person {some disj Course0, Course2, Course1: Course {some disj Project0, Project1: Project {some disj Grade0, Grade1, Grade2: Grade {
Person = Person0 + Person1
teaches = Person0->Course1 + Person1->Course0 + Person1->Course1 + Person1->Course2
enrolled = Person1->Course0 + Person1->Course1 + Person1->Course2
projects = Person0->Project1 + Person1->Project0 + Person1->Project1
Course = Course0 + Course1 + Course2
projects = Course2->Project1
grades = Course0->Person1->Grade0 + Course0->Person1->Grade1 + Course0->Person1->Grade2 + Course1->Person1->Grade0 + Course2->Person1->Grade0 + Course2->Person1->Grade1
Project = Project0 + Project1
Grade = Grade0 + Grade1 + Grade2
ordering/first = Grade0
ordering/next = Grade0->Grade1 + Grade1->Grade2
Professor = Person0 + Person1
Student = Person1
inv9[]
}}}}
}
run test42 for 3 but 1 steps
pred test43 {
some disj Person0, Person1: Person {some disj Course0: Course {some disj Project0, Project2, Project1: Project {some disj Grade0, Grade1, Grade2: Grade {
Person = Person0 + Person1
teaches = Person0->Course0 + Person1->Course0
enrolled = Person0->Course0 + Person1->Course0
projects = Person0->Project2 + Person1->Project0 + Person1->Project1 + Person1->Project2
Course = Course0
projects = Course0->Project0 + Course0->Project1 + Course0->Project2
no grades
Project = Project0 + Project1 + Project2
Grade = Grade0 + Grade1 + Grade2
ordering/first = Grade0
ordering/next = Grade0->Grade1 + Grade1->Grade2
Professor = Person0 + Person1
Student = Person1
inv9[]
}}}}
}
run test43 for 3 but 1 steps
pred test44 {
some disj Person0, Person1: Person {some disj Course0, Course2, Course1: Course {some disj Project0, Project1: Project {some disj Grade0, Grade1, Grade2: Grade {
Person = Person0 + Person1
teaches = Person0->Course1 + Person1->Course0 + Person1->Course1 + Person1->Course2
enrolled = Person1->Course0 + Person1->Course1 + Person1->Course2
projects = Person1->Project0 + Person1->Project1
Course = Course0 + Course1 + Course2
projects = Course2->Project1
grades = Course0->Person1->Grade0 + Course0->Person1->Grade1 + Course0->Person1->Grade2 + Course1->Person1->Grade0 + Course1->Person1->Grade1 + Course1->Person1->Grade2 + Course2->Person1->Grade0 + Course2->Person1->Grade1
Project = Project0 + Project1
Grade = Grade0 + Grade1 + Grade2
ordering/first = Grade0
ordering/next = Grade0->Grade1 + Grade1->Grade2
Professor = Person0 + Person1
Student = Person1
inv9[]
}}}}
}
run test44 for 3 but 1 steps
pred test45 {
some disj Person0, Person1: Person {some disj Course0: Course {some disj Project0, Project1: Project {some disj Grade0, Grade1, Grade2: Grade {
Person = Person0 + Person1
teaches = Person0->Course0 + Person1->Course0
no enrolled
projects = Person0->Project1 + Person1->Project0 + Person1->Project1
Course = Course0
projects = Course0->Project1
grades = Course0->Person1->Grade0 + Course0->Person1->Grade1
Project = Project0 + Project1
Grade = Grade0 + Grade1 + Grade2
ordering/first = Grade0
ordering/next = Grade0->Grade1 + Grade1->Grade2
Professor = Person0 + Person1
Student = Person1
inv9[]
}}}}
}
run test45 for 3 but 1 steps
