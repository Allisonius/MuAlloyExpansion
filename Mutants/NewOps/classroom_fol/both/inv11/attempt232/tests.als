
pred test1 {
some disj Person0, Person1: Person {some disj Group1, Group2, Group0: Group {some disj Class0, Class1, Class2: Class {
Person = Person0 + Person1
Tutors = Person0->Person1 + Person1->Person1
Teaches = Person0->Class0 + Person0->Class1 + Person0->Class2
Group = Group0 + Group1 + Group2
Class = Class0 + Class1 + Class2
Groups = Class0->Person0->Group0 + Class0->Person0->Group1 + Class0->Person0->Group2 + Class1->Person0->Group0 + Class1->Person0->Group1 + Class1->Person0->Group2 + Class2->Person0->Group0 + Class2->Person0->Group1 + Class2->Person0->Group2 + Class2->Person1->Group2
Teacher = Person1
Student = Person1
inv11[]
}}}
}
run test1 for 3 but 1 steps
pred test2 {
some disj Person0, Person1: Person {some disj Group1, Group2, Group0: Group {some disj Class0, Class1, Class2: Class {
Person = Person0 + Person1
Tutors = Person0->Person1 + Person1->Person1
Teaches = Person0->Class0 + Person0->Class1 + Person0->Class2
Group = Group0 + Group1 + Group2
Class = Class0 + Class1 + Class2
Groups = Class0->Person0->Group0 + Class0->Person0->Group1 + Class0->Person0->Group2 + Class1->Person0->Group0 + Class1->Person0->Group1 + Class1->Person0->Group2 + Class2->Person0->Group0 + Class2->Person0->Group1 + Class2->Person0->Group2
Teacher = Person0
Student = Person1
inv11[]
}}}
}
run test2 for 3 but 1 steps
pred test3 {
some disj Person0, Person1: Person {some disj Group1, Group2, Group0: Group {some disj Class0, Class1, Class2: Class {
Person = Person0 + Person1
Tutors = Person0->Person1 + Person1->Person1
Teaches = Person0->Class1 + Person0->Class2 + Person1->Class0
Group = Group0 + Group1 + Group2
Class = Class0 + Class1 + Class2
Groups = Class0->Person0->Group0 + Class0->Person0->Group1 + Class0->Person0->Group2 + Class1->Person0->Group0 + Class1->Person0->Group1 + Class1->Person0->Group2 + Class2->Person0->Group0 + Class2->Person0->Group1 + Class2->Person0->Group2
Teacher = Person0 + Person1
no Student
no Student' --loop state
inv11[]
}}}
}
run test3 for 3 but 1 steps
pred test4 {
some disj Person0, Person1: Person {some disj Group1, Group2, Group0: Group {some disj Class0, Class1, Class2: Class {
Person = Person0 + Person1
Tutors = Person0->Person1 + Person1->Person1
Teaches = Person1->Class0 + Person1->Class1 + Person1->Class2
Group = Group0 + Group1 + Group2
Class = Class0 + Class1 + Class2
Groups = Class0->Person0->Group0 + Class0->Person0->Group1 + Class0->Person0->Group2 + Class1->Person0->Group0 + Class1->Person0->Group1 + Class1->Person0->Group2 + Class2->Person0->Group0 + Class2->Person0->Group1 + Class2->Person0->Group2
no Teacher
no Teacher' --loop state
no Student
no Student' --loop state
inv11[]
}}}
}
run test4 for 3 but 1 steps
pred test5 {
some disj Person0, Person1: Person {some disj Group1, Group2, Group0: Group {some disj Class0, Class1, Class2: Class {
Person = Person0 + Person1
Tutors = Person0->Person1 + Person1->Person1
Teaches = Person1->Class0 + Person1->Class1 + Person1->Class2
Group = Group0 + Group1 + Group2
Class = Class0 + Class1 + Class2
Groups = Class0->Person0->Group0 + Class0->Person0->Group1 + Class0->Person0->Group2 + Class1->Person0->Group0 + Class1->Person0->Group1 + Class1->Person0->Group2 + Class2->Person0->Group0 + Class2->Person0->Group1 + Class2->Person0->Group2
Teacher = Person0
Student = Person1
inv11[]
}}}
}
run test5 for 3 but 1 steps
pred test6 {
some disj Person0, Person1, Person2: Person {some disj Group1, Group0: Group {some disj Class0, Class1, Class2: Class {
Person = Person0 + Person1 + Person2
Tutors = Person1->Person2 + Person2->Person2
Teaches = Person0->Class2 + Person1->Class1 + Person2->Class0 + Person2->Class2
Group = Group0 + Group1
Class = Class0 + Class1 + Class2
Groups = Class0->Person1->Group1 + Class0->Person2->Group0 + Class1->Person2->Group0 + Class2->Person2->Group0 + Class2->Person2->Group1
Teacher = Person1 + Person2
Student = Person2
inv11[]
}}}
}
run test6 for 3 but 1 steps
pred test7 {
some disj Person0: Person {some disj Group1, Group2, Group0: Group {
Person = Person0
Tutors = Person0->Person0
no Teaches
Group = Group0 + Group1 + Group2
no Class
no Groups
no Class' --loop state
no Teacher
no Teacher' --loop state
Student = Person0
inv11[]
}}
}
run test7 for 3 but 1 steps
pred test8 {
some disj Person0, Person1: Person {some disj Group0: Group {
Person = Person0 + Person1
Tutors = Person1->Person1
no Teaches
Group = Group0
no Class
no Groups
no Class' --loop state
no Teacher
no Teacher' --loop state
Student = Person0 + Person1
inv11[]
}}
}
run test8 for 3 but 1 steps
pred test9 {
some disj Person0, Person1: Person {some disj Group1, Group2, Group0: Group {some disj Class0, Class1, Class2: Class {
Person = Person0 + Person1
Tutors = Person0->Person1 + Person1->Person1
Teaches = Person0->Class1 + Person0->Class2 + Person1->Class0
Group = Group0 + Group1 + Group2
Class = Class0 + Class1 + Class2
Groups = Class0->Person0->Group0 + Class0->Person0->Group1 + Class0->Person0->Group2 + Class1->Person0->Group0 + Class1->Person0->Group1 + Class1->Person0->Group2 + Class2->Person0->Group0 + Class2->Person0->Group1 + Class2->Person0->Group2
Teacher = Person0
Student = Person1
inv11[]
}}}
}
run test9 for 3 but 1 steps
pred test10 {
some disj Person0, Person1: Person {some disj Group1, Group2, Group0: Group {some disj Class0, Class1, Class2: Class {
Person = Person0 + Person1
Tutors = Person0->Person1 + Person1->Person1
Teaches = Person0->Class2 + Person1->Class0 + Person1->Class1
Group = Group0 + Group1 + Group2
Class = Class0 + Class1 + Class2
Groups = Class0->Person0->Group0 + Class0->Person0->Group1 + Class0->Person0->Group2 + Class1->Person0->Group0 + Class1->Person0->Group1 + Class1->Person0->Group2 + Class2->Person0->Group1 + Class2->Person0->Group2 + Class2->Person1->Group0
no Teacher
no Teacher' --loop state
no Student
no Student' --loop state
inv11[]
}}}
}
run test10 for 3 but 1 steps
pred test11 {
some disj Person0, Person1: Person {some disj Group1, Group2, Group0: Group {some disj Class0, Class1, Class2: Class {
Person = Person0 + Person1
Tutors = Person0->Person1 + Person1->Person1
Teaches = Person0->Class0 + Person0->Class1 + Person0->Class2
Group = Group0 + Group1 + Group2
Class = Class0 + Class1 + Class2
Groups = Class0->Person0->Group0 + Class0->Person0->Group1 + Class0->Person0->Group2 + Class1->Person0->Group0 + Class1->Person0->Group1 + Class1->Person0->Group2 + Class2->Person0->Group0 + Class2->Person0->Group1 + Class2->Person0->Group2
Teacher = Person1
Student = Person1
inv11[]
}}}
}
run test11 for 3 but 1 steps
pred test12 {
some disj Person0: Person {some disj Class0: Class {
Person = Person0
Tutors = Person0->Person0
no Teaches
no Group
no Group' --loop state
Class = Class0
no Groups
Teacher = Person0
Student = Person0
inv11[]
}}
}
run test12 for 3 but 1 steps
pred test13 {
some disj Person0, Person1, Person2: Person {some disj Class0, Class1: Class {
Person = Person0 + Person1 + Person2
Tutors = Person1->Person1 + Person1->Person2
Teaches = Person0->Class0 + Person0->Class1 + Person1->Class0 + Person1->Class1
no Group
no Group' --loop state
Class = Class0 + Class1
no Groups
Teacher = Person2
Student = Person2
inv11[]
}}
}
run test13 for 3 but 1 steps
pred test14 {
some disj Person0, Person1: Person {some disj Class0: Class {
Person = Person0 + Person1
Tutors = Person1->Person1
no Teaches
no Group
no Group' --loop state
Class = Class0
no Groups
no Teacher
no Teacher' --loop state
Student = Person0 + Person1
inv11[]
}}
}
run test14 for 3 but 1 steps
pred test15 {
some disj Person0, Person1: Person {some disj Class0, Class1, Class2: Class {
Person = Person0 + Person1
Tutors = Person1->Person1
Teaches = Person1->Class2
no Group
no Group' --loop state
Class = Class0 + Class1 + Class2
no Groups
no Teacher
no Teacher' --loop state
Student = Person0 + Person1
inv11[]
}}
}
run test15 for 3 but 1 steps
pred test16 {
some disj Person0, Person1: Person {some disj Group1, Group2, Group0: Group {some disj Class0, Class1, Class2: Class {
Person = Person0 + Person1
Tutors = Person0->Person1 + Person1->Person1
Teaches = Person0->Class0 + Person0->Class1 + Person0->Class2
Group = Group0 + Group1 + Group2
Class = Class0 + Class1 + Class2
Groups = Class0->Person0->Group1 + Class0->Person0->Group2 + Class0->Person1->Group0 + Class1->Person0->Group1 + Class1->Person0->Group2 + Class1->Person1->Group0 + Class2->Person0->Group1 + Class2->Person0->Group2 + Class2->Person1->Group0
Teacher = Person0 + Person1
Student = Person1
inv11[]
}}}
}
run test16 for 3 but 1 steps
pred test17 {
some disj Person0, Person1: Person {some disj Group1, Group2, Group0: Group {some disj Class0, Class1, Class2: Class {
Person = Person0 + Person1
Tutors = Person0->Person1 + Person1->Person1
Teaches = Person0->Class0 + Person0->Class1 + Person0->Class2 + Person1->Class0 + Person1->Class1 + Person1->Class2
Group = Group0 + Group1 + Group2
Class = Class0 + Class1 + Class2
Groups = Class0->Person0->Group0 + Class0->Person0->Group1 + Class0->Person0->Group2 + Class1->Person0->Group0 + Class1->Person0->Group1 + Class1->Person0->Group2 + Class2->Person0->Group0 + Class2->Person0->Group1 + Class2->Person0->Group2
Teacher = Person0 + Person1
Student = Person1
inv11[]
}}}
}
run test17 for 3 but 1 steps
pred test18 {
some disj Person0, Person1: Person {some disj Group1, Group2, Group0: Group {some disj Class0, Class1, Class2: Class {
Person = Person0 + Person1
Tutors = Person0->Person1 + Person1->Person1
Teaches = Person0->Class0 + Person0->Class1 + Person0->Class2
Group = Group0 + Group1 + Group2
Class = Class0 + Class1 + Class2
Groups = Class0->Person1->Group0 + Class0->Person1->Group1 + Class0->Person1->Group2 + Class1->Person1->Group0 + Class1->Person1->Group1 + Class1->Person1->Group2 + Class2->Person0->Group0 + Class2->Person0->Group1 + Class2->Person0->Group2 + Class2->Person1->Group2
Teacher = Person0 + Person1
Student = Person1
inv11[]
}}}
}
run test18 for 3 but 1 steps
pred test19 {
some disj Person0, Person1, Person2: Person {some disj Class0: Class {
Person = Person0 + Person1 + Person2
Tutors = Person2->Person2
no Teaches
no Group
no Group' --loop state
Class = Class0
no Groups
no Teacher
no Teacher' --loop state
Student = Person2
inv11[]
}}
}
run test19 for 3 but 1 steps
pred test20 {
some disj Person0, Person1, Person2: Person {some disj Group1, Group2, Group0: Group {some disj Class0, Class1, Class2: Class {
Person = Person0 + Person1 + Person2
Tutors = Person1->Person2 + Person2->Person2
Teaches = Person1->Class2 + Person2->Class1
Group = Group0 + Group1 + Group2
Class = Class0 + Class1 + Class2
Groups = Class0->Person0->Group0 + Class0->Person0->Group1 + Class0->Person0->Group2 + Class0->Person2->Group0 + Class0->Person2->Group1 + Class0->Person2->Group2 + Class1->Person0->Group2 + Class1->Person1->Group0 + Class1->Person1->Group1 + Class1->Person2->Group2 + Class2->Person0->Group1 + Class2->Person1->Group0 + Class2->Person1->Group2 + Class2->Person2->Group1
no Teacher
no Teacher' --loop state
no Student
no Student' --loop state
inv11[]
}}}
}
run test20 for 3 but 1 steps
pred test21 {
some disj Person0, Person1: Person {some disj Group1, Group2, Group0: Group {some disj Class0, Class1, Class2: Class {
Person = Person0 + Person1
Tutors = Person0->Person1 + Person1->Person1
Teaches = Person0->Class0 + Person0->Class1 + Person0->Class2
Group = Group0 + Group1 + Group2
Class = Class0 + Class1 + Class2
Groups = Class0->Person0->Group0 + Class0->Person0->Group1 + Class0->Person0->Group2 + Class1->Person0->Group0 + Class1->Person0->Group1 + Class1->Person0->Group2 + Class2->Person0->Group0 + Class2->Person0->Group1 + Class2->Person0->Group2 + Class2->Person1->Group2
Teacher = Person0
Student = Person1
inv11[]
}}}
}
run test21 for 3 but 1 steps
pred test22 {
some disj Person0, Person1: Person {some disj Group1, Group2, Group0: Group {some disj Class0, Class1, Class2: Class {
Person = Person0 + Person1
Tutors = Person0->Person1 + Person1->Person1
Teaches = Person0->Class2 + Person1->Class0 + Person1->Class1
Group = Group0 + Group1 + Group2
Class = Class0 + Class1 + Class2
Groups = Class0->Person0->Group1 + Class0->Person0->Group2 + Class0->Person1->Group0 + Class1->Person0->Group0 + Class1->Person0->Group1 + Class1->Person0->Group2 + Class2->Person0->Group0 + Class2->Person0->Group1 + Class2->Person0->Group2
Teacher = Person1
Student = Person1
inv11[]
}}}
}
run test22 for 3 but 1 steps
pred test23 {
some disj Person0, Person1: Person {some disj Group1, Group2, Group0: Group {some disj Class0, Class1, Class2: Class {
Person = Person0 + Person1
Tutors = Person0->Person1 + Person1->Person1
Teaches = Person0->Class0 + Person0->Class1 + Person0->Class2
Group = Group0 + Group1 + Group2
Class = Class0 + Class1 + Class2
Groups = Class0->Person1->Group0 + Class0->Person1->Group1 + Class0->Person1->Group2 + Class1->Person0->Group0 + Class1->Person0->Group1 + Class1->Person0->Group2 + Class2->Person0->Group0 + Class2->Person0->Group1 + Class2->Person0->Group2
Teacher = Person0 + Person1
Student = Person1
inv11[]
}}}
}
run test23 for 3 but 1 steps
pred test24 {
some disj Person0, Person1: Person {some disj Group1, Group2, Group0: Group {some disj Class0, Class1, Class2: Class {
Person = Person0 + Person1
Tutors = Person0->Person1 + Person1->Person1
Teaches = Person0->Class1 + Person0->Class2 + Person1->Class0
Group = Group0 + Group1 + Group2
Class = Class0 + Class1 + Class2
Groups = Class0->Person0->Group1 + Class0->Person0->Group2 + Class0->Person1->Group0 + Class1->Person0->Group0 + Class1->Person0->Group1 + Class1->Person0->Group2 + Class2->Person0->Group0 + Class2->Person0->Group1 + Class2->Person0->Group2
Teacher = Person1
Student = Person1
inv11[]
}}}
}
run test24 for 3 but 1 steps
pred test25 {
some disj Person0, Person1: Person {some disj Group1, Group2, Group0: Group {some disj Class0, Class1, Class2: Class {
Person = Person0 + Person1
Tutors = Person0->Person1 + Person1->Person1
Teaches = Person0->Class1 + Person0->Class2 + Person1->Class0
Group = Group0 + Group1 + Group2
Class = Class0 + Class1 + Class2
Groups = Class0->Person0->Group0 + Class0->Person0->Group1 + Class0->Person0->Group2 + Class1->Person0->Group1 + Class1->Person0->Group2 + Class1->Person1->Group0 + Class2->Person0->Group0 + Class2->Person0->Group1 + Class2->Person0->Group2
Teacher = Person0
Student = Person1
inv11[]
}}}
}
run test25 for 3 but 1 steps
pred test26 {
some disj Person0, Person1: Person {some disj Group1, Group0: Group {some disj Class0, Class1, Class2: Class {
Person = Person0 + Person1
Tutors = Person0->Person1 + Person1->Person1
Teaches = Person0->Class0 + Person0->Class1 + Person0->Class2 + Person1->Class1 + Person1->Class2
Group = Group0 + Group1
Class = Class0 + Class1 + Class2
no Groups
Teacher = Person1
Student = Person0 + Person1
inv11[]
}}}
}
run test26 for 3 but 1 steps
pred test27 {
some disj Person0, Person1: Person {some disj Group1, Group2, Group0: Group {some disj Class0, Class1, Class2: Class {
Person = Person0 + Person1
Tutors = Person0->Person1 + Person1->Person1
Teaches = Person0->Class2
Group = Group0 + Group1 + Group2
Class = Class0 + Class1 + Class2
Groups = Class0->Person0->Group2 + Class1->Person0->Group1 + Class2->Person0->Group0 + Class2->Person1->Group1
Teacher = Person0
Student = Person1
inv11[]
}}}
}
run test27 for 3 but 1 steps
pred test28 {
some disj Person0, Person1: Person {some disj Group1, Group2, Group0: Group {some disj Class0, Class1, Class2: Class {
Person = Person0 + Person1
Tutors = Person0->Person1 + Person1->Person1
Teaches = Person0->Class1 + Person0->Class2 + Person1->Class0 + Person1->Class2
Group = Group0 + Group1 + Group2
Class = Class0 + Class1 + Class2
Groups = Class0->Person0->Group0 + Class0->Person0->Group1 + Class0->Person0->Group2 + Class1->Person0->Group0 + Class1->Person0->Group1 + Class1->Person0->Group2 + Class2->Person0->Group1 + Class2->Person0->Group2 + Class2->Person1->Group0
Teacher = Person1
Student = Person1
inv11[]
}}}
}
run test28 for 3 but 1 steps
pred test29 {
some disj Person0, Person1, Person2: Person {some disj Group1, Group2, Group0: Group {some disj Class0, Class1, Class2: Class {
Person = Person0 + Person1 + Person2
Tutors = Person1->Person2 + Person2->Person2
Teaches = Person2->Class0 + Person2->Class1 + Person2->Class2
Group = Group0 + Group1 + Group2
Class = Class0 + Class1 + Class2
Groups = Class0->Person0->Group2 + Class0->Person1->Group1 + Class0->Person1->Group2 + Class0->Person2->Group0 + Class1->Person0->Group0 + Class1->Person0->Group1 + Class1->Person1->Group2 + Class1->Person2->Group2 + Class2->Person0->Group0 + Class2->Person0->Group1 + Class2->Person0->Group2 + Class2->Person1->Group0 + Class2->Person1->Group1 + Class2->Person1->Group2
Teacher = Person1 + Person2
Student = Person2
inv11[]
}}}
}
run test29 for 3 but 1 steps
pred test30 {
some disj Person0, Person1: Person {some disj Group1, Group2, Group0: Group {some disj Class0, Class1, Class2: Class {
Person = Person0 + Person1
Tutors = Person0->Person1 + Person1->Person1
Teaches = Person0->Class0 + Person0->Class1 + Person0->Class2
Group = Group0 + Group1 + Group2
Class = Class0 + Class1 + Class2
Groups = Class0->Person0->Group1 + Class0->Person0->Group2 + Class0->Person1->Group0 + Class1->Person0->Group0 + Class1->Person0->Group1 + Class1->Person0->Group2 + Class2->Person0->Group0 + Class2->Person0->Group1 + Class2->Person0->Group2
Teacher = Person0
Student = Person1
inv11[]
}}}
}
run test30 for 3 but 1 steps
pred test31 {
some disj Person0, Person1: Person {some disj Group1, Group2, Group0: Group {some disj Class0, Class1, Class2: Class {
Person = Person0 + Person1
Tutors = Person0->Person1 + Person1->Person1
Teaches = Person0->Class0 + Person0->Class1 + Person0->Class2
Group = Group0 + Group1 + Group2
Class = Class0 + Class1 + Class2
Groups = Class0->Person0->Group0 + Class0->Person0->Group1 + Class0->Person0->Group2 + Class1->Person0->Group0 + Class1->Person0->Group1 + Class1->Person0->Group2 + Class2->Person0->Group0 + Class2->Person0->Group1 + Class2->Person0->Group2 + Class2->Person1->Group2
Teacher = Person1
no Student
no Student' --loop state
inv11[]
}}}
}
run test31 for 3 but 1 steps
pred test32 {
some disj Person0, Person1, Person2: Person {some disj Group1, Group2, Group0: Group {
Person = Person0 + Person1 + Person2
Tutors = Person1->Person2 + Person2->Person0 + Person2->Person2
no Teaches
Group = Group0 + Group1 + Group2
no Class
no Groups
no Class' --loop state
no Teacher
no Teacher' --loop state
Student = Person2
inv11[]
}}
}
run test32 for 3 but 1 steps
pred test33 {
some disj Person0, Person1, Person2: Person {some disj Group0: Group {
Person = Person0 + Person1 + Person2
Tutors = Person2->Person2
no Teaches
Group = Group0
no Class
no Groups
no Class' --loop state
no Teacher
no Teacher' --loop state
Student = Person2
inv11[]
}}
}
run test33 for 3 but 1 steps
pred test34 {
some disj Person0: Person {some disj Class0, Class1, Class2: Class {
Person = Person0
Tutors = Person0->Person0
Teaches = Person0->Class2
no Group
no Group' --loop state
Class = Class0 + Class1 + Class2
no Groups
no Teacher
no Teacher' --loop state
Student = Person0
inv11[]
}}
}
run test34 for 3 but 1 steps
pred test35 {
some disj Person0, Person1, Person2: Person {some disj Class0: Class {
Person = Person0 + Person1 + Person2
Tutors = Person2->Person0 + Person2->Person2
no Teaches
no Group
no Group' --loop state
Class = Class0
no Groups
no Teacher
no Teacher' --loop state
Student = Person1 + Person2
inv11[]
}}
}
run test35 for 3 but 1 steps
pred test36 {
some disj Person0, Person1: Person {some disj Group1, Group2, Group0: Group {some disj Class0, Class1, Class2: Class {
Person = Person0 + Person1
Tutors = Person0->Person1 + Person1->Person1
Teaches = Person1->Class0 + Person1->Class1 + Person1->Class2
Group = Group0 + Group1 + Group2
Class = Class0 + Class1 + Class2
Groups = Class0->Person0->Group1 + Class0->Person0->Group2 + Class0->Person1->Group0 + Class1->Person0->Group0 + Class1->Person0->Group1 + Class1->Person0->Group2 + Class2->Person0->Group0 + Class2->Person0->Group1 + Class2->Person0->Group2
no Teacher
no Teacher' --loop state
no Student
no Student' --loop state
inv11[]
}}}
}
run test36 for 3 but 1 steps
pred test37 {
some disj Person0, Person1, Person2: Person {some disj Group1, Group2, Group0: Group {some disj Class0, Class1, Class2: Class {
Person = Person0 + Person1 + Person2
Tutors = Person1->Person2 + Person2->Person2
Teaches = Person0->Class0 + Person0->Class1 + Person0->Class2 + Person1->Class1 + Person1->Class2 + Person2->Class0 + Person2->Class2
Group = Group0 + Group1 + Group2
Class = Class0 + Class1 + Class2
Groups = Class0->Person0->Group2 + Class0->Person1->Group0 + Class0->Person1->Group1 + Class1->Person0->Group1 + Class1->Person1->Group1 + Class1->Person2->Group0 + Class1->Person2->Group2 + Class2->Person0->Group1 + Class2->Person1->Group2 + Class2->Person2->Group0 + Class2->Person2->Group1
Teacher = Person1
Student = Person2
inv11[]
}}}
}
run test37 for 3 but 1 steps
pred test38 {
some disj Person0, Person1: Person {some disj Group1, Group2, Group0: Group {some disj Class0, Class1, Class2: Class {
Person = Person0 + Person1
Tutors = Person0->Person1 + Person1->Person1
Teaches = Person0->Class0 + Person0->Class1 + Person0->Class2
Group = Group0 + Group1 + Group2
Class = Class0 + Class1 + Class2
Groups = Class0->Person0->Group0 + Class0->Person0->Group1 + Class0->Person0->Group2 + Class1->Person0->Group0 + Class1->Person0->Group1 + Class1->Person0->Group2 + Class2->Person0->Group0 + Class2->Person0->Group1 + Class2->Person0->Group2 + Class2->Person1->Group2
Teacher = Person0 + Person1
Student = Person1
inv11[]
}}}
}
run test38 for 3 but 1 steps
pred test39 {
some disj Person0, Person1: Person {some disj Group1, Group2, Group0: Group {some disj Class0, Class1, Class2: Class {
Person = Person0 + Person1
Tutors = Person0->Person1 + Person1->Person1
Teaches = Person1->Class0 + Person1->Class1 + Person1->Class2
Group = Group0 + Group1 + Group2
Class = Class0 + Class1 + Class2
Groups = Class0->Person1->Group0 + Class0->Person1->Group1 + Class0->Person1->Group2 + Class1->Person1->Group0 + Class1->Person1->Group1 + Class1->Person1->Group2 + Class2->Person0->Group0 + Class2->Person0->Group1 + Class2->Person0->Group2 + Class2->Person1->Group2
Teacher = Person0 + Person1
Student = Person0 + Person1
inv11[]
}}}
}
run test39 for 3 but 1 steps
pred test40 {
some disj Person0, Person1: Person {some disj Group1, Group2, Group0: Group {some disj Class0, Class1, Class2: Class {
Person = Person0 + Person1
Tutors = Person0->Person1 + Person1->Person1
Teaches = Person0->Class0 + Person0->Class1 + Person0->Class2
Group = Group0 + Group1 + Group2
Class = Class0 + Class1 + Class2
Groups = Class0->Person0->Group2 + Class0->Person1->Group0 + Class0->Person1->Group1 + Class1->Person0->Group1 + Class1->Person1->Group0 + Class1->Person1->Group2 + Class2->Person0->Group0 + Class2->Person0->Group2 + Class2->Person1->Group1 + Class2->Person1->Group2
Teacher = Person0 + Person1
Student = Person1
inv11[]
}}}
}
run test40 for 3 but 1 steps
pred test41 {
some disj Person0, Person1, Person2: Person {some disj Group1, Group2, Group0: Group {some disj Class0, Class1, Class2: Class {
Person = Person0 + Person1 + Person2
Tutors = Person2->Person2
Teaches = Person0->Class1 + Person0->Class2 + Person1->Class2 + Person2->Class0 + Person2->Class1
Group = Group0 + Group1 + Group2
Class = Class0 + Class1 + Class2
Groups = Class0->Person2->Group0 + Class0->Person2->Group1 + Class0->Person2->Group2 + Class1->Person2->Group0 + Class1->Person2->Group1 + Class1->Person2->Group2 + Class2->Person2->Group2
Teacher = Person0 + Person2
Student = Person1 + Person2
inv11[]
}}}
}
run test41 for 3 but 1 steps
pred test42 {
some disj Person0, Person1: Person {some disj Group1, Group2, Group0: Group {some disj Class0, Class1, Class2: Class {
Person = Person0 + Person1
Tutors = Person0->Person1 + Person1->Person1
Teaches = Person1->Class0 + Person1->Class1 + Person1->Class2
Group = Group0 + Group1 + Group2
Class = Class0 + Class1 + Class2
Groups = Class0->Person1->Group0 + Class0->Person1->Group1 + Class0->Person1->Group2 + Class1->Person1->Group0 + Class1->Person1->Group1 + Class1->Person1->Group2 + Class2->Person1->Group0 + Class2->Person1->Group1 + Class2->Person1->Group2
Teacher = Person1
Student = Person0 + Person1
inv11[]
}}}
}
run test42 for 3 but 1 steps
pred test43 {
some disj Person0, Person1: Person {some disj Group1, Group2, Group0: Group {some disj Class0, Class1, Class2: Class {
Person = Person0 + Person1
Tutors = Person0->Person1 + Person1->Person1
Teaches = Person0->Class1 + Person0->Class2 + Person1->Class0
Group = Group0 + Group1 + Group2
Class = Class0 + Class1 + Class2
Groups = Class0->Person0->Group1 + Class0->Person0->Group2 + Class0->Person1->Group0 + Class1->Person0->Group2 + Class1->Person1->Group0 + Class1->Person1->Group1 + Class2->Person0->Group2 + Class2->Person1->Group0 + Class2->Person1->Group1 + Class2->Person1->Group2
Teacher = Person0 + Person1
Student = Person1
inv11[]
}}}
}
run test43 for 3 but 1 steps
pred test44 {
some disj Person0, Person1, Person2: Person {some disj Group1, Group2, Group0: Group {some disj Class0, Class1, Class2: Class {
Person = Person0 + Person1 + Person2
Tutors = Person1->Person2 + Person2->Person2
Teaches = Person1->Class2 + Person2->Class0 + Person2->Class1
Group = Group0 + Group1 + Group2
Class = Class0 + Class1 + Class2
Groups = Class0->Person0->Group0 + Class0->Person0->Group1 + Class0->Person0->Group2 + Class0->Person1->Group2 + Class1->Person0->Group0 + Class1->Person0->Group1 + Class1->Person0->Group2 + Class1->Person1->Group2 + Class1->Person2->Group1 + Class2->Person0->Group0 + Class2->Person0->Group1 + Class2->Person0->Group2 + Class2->Person1->Group1 + Class2->Person1->Group2 + Class2->Person2->Group1
Teacher = Person1 + Person2
Student = Person2
inv11[]
}}}
}
run test44 for 3 but 1 steps
pred test45 {
some disj Person0, Person1: Person {some disj Group1, Group2, Group0: Group {some disj Class0, Class1, Class2: Class {
Person = Person0 + Person1
Tutors = Person0->Person1 + Person1->Person1
Teaches = Person0->Class1 + Person0->Class2 + Person1->Class0
Group = Group0 + Group1 + Group2
Class = Class0 + Class1 + Class2
Groups = Class0->Person0->Group0 + Class0->Person0->Group1 + Class0->Person0->Group2 + Class1->Person0->Group1 + Class1->Person0->Group2 + Class1->Person1->Group0 + Class2->Person0->Group0 + Class2->Person0->Group1 + Class2->Person0->Group2
Teacher = Person0 + Person1
Student = Person1
inv11[]
}}}
}
run test45 for 3 but 1 steps
pred test46 {
some disj Person0, Person1: Person {some disj Group1, Group2, Group0: Group {some disj Class0, Class1, Class2: Class {
Person = Person0 + Person1
Tutors = Person0->Person1 + Person1->Person1
Teaches = Person0->Class1 + Person0->Class2 + Person1->Class2
Group = Group0 + Group1 + Group2
Class = Class0 + Class1 + Class2
Groups = Class0->Person0->Group2 + Class1->Person0->Group1 + Class1->Person1->Group0 + Class2->Person0->Group0 + Class2->Person0->Group1 + Class2->Person0->Group2
Teacher = Person0
Student = Person1
inv11[]
}}}
}
run test46 for 3 but 1 steps
pred test47 {
some disj Person0, Person1, Person2: Person {some disj Group1, Group2, Group0: Group {some disj Class0, Class1, Class2: Class {
Person = Person0 + Person1 + Person2
Tutors = Person1->Person2 + Person2->Person2
Teaches = Person1->Class2 + Person2->Class0 + Person2->Class1
Group = Group0 + Group1 + Group2
Class = Class0 + Class1 + Class2
Groups = Class0->Person1->Group1 + Class0->Person1->Group2 + Class0->Person2->Group0 + Class1->Person0->Group0 + Class1->Person1->Group1 + Class1->Person1->Group2 + Class1->Person2->Group0 + Class2->Person1->Group0 + Class2->Person1->Group1 + Class2->Person1->Group2
Teacher = Person2
Student = Person2
inv11[]
}}}
}
run test47 for 3 but 1 steps
pred test48 {
some disj Person0, Person1, Person2: Person {some disj Group0: Group {some disj Class0, Class1, Class2: Class {
Person = Person0 + Person1 + Person2
Tutors = Person1->Person2 + Person2->Person2
Teaches = Person0->Class2 + Person1->Class0 + Person1->Class1 + Person2->Class0 + Person2->Class1
Group = Group0
Class = Class0 + Class1 + Class2
no Groups
Teacher = Person1 + Person2
Student = Person2
inv11[]
}}}
}
run test48 for 3 but 1 steps
pred test49 {
some disj Person0, Person1: Person {some disj Group1, Group2, Group0: Group {some disj Class0, Class1, Class2: Class {
Person = Person0 + Person1
Tutors = Person0->Person1 + Person1->Person1
Teaches = Person0->Class1 + Person0->Class2 + Person1->Class0
Group = Group0 + Group1 + Group2
Class = Class0 + Class1 + Class2
Groups = Class0->Person0->Group0 + Class0->Person0->Group1 + Class0->Person0->Group2 + Class1->Person0->Group1 + Class1->Person0->Group2 + Class1->Person1->Group0 + Class2->Person0->Group1 + Class2->Person0->Group2 + Class2->Person1->Group0
Teacher = Person0 + Person1
Student = Person0 + Person1
inv11[]
}}}
}
run test49 for 3 but 1 steps
pred test50 {
some disj Person0, Person1: Person {some disj Group1, Group2, Group0: Group {some disj Class0, Class1, Class2: Class {
Person = Person0 + Person1
Tutors = Person0->Person1 + Person1->Person1
Teaches = Person1->Class2
Group = Group0 + Group1 + Group2
Class = Class0 + Class1 + Class2
Groups = Class0->Person0->Group0 + Class0->Person0->Group1 + Class0->Person0->Group2 + Class1->Person0->Group0 + Class1->Person0->Group1 + Class1->Person0->Group2 + Class2->Person0->Group1 + Class2->Person0->Group2 + Class2->Person1->Group0
Teacher = Person1
Student = Person1
inv11[]
}}}
}
run test50 for 3 but 1 steps
pred test51 {
some disj Person0: Person {some disj Group0: Group {some disj Class0, Class1, Class2: Class {
Person = Person0
Tutors = Person0->Person0
Teaches = Person0->Class2
Group = Group0
Class = Class0 + Class1 + Class2
Groups = Class2->Person0->Group0
Teacher = Person0
Student = Person0
inv11[]
}}}
}
run test51 for 3 but 1 steps
pred test52 {
some disj Person0, Person1: Person {some disj Group1, Group2, Group0: Group {some disj Class0, Class1, Class2: Class {
Person = Person0 + Person1
Tutors = Person0->Person1 + Person1->Person1
Teaches = Person0->Class1 + Person0->Class2 + Person1->Class0
Group = Group0 + Group1 + Group2
Class = Class0 + Class1 + Class2
Groups = Class0->Person0->Group2 + Class0->Person1->Group0 + Class0->Person1->Group1 + Class1->Person0->Group0 + Class1->Person0->Group1 + Class1->Person0->Group2 + Class2->Person0->Group0 + Class2->Person0->Group1 + Class2->Person0->Group2
Teacher = Person1
Student = Person1
inv11[]
}}}
}
run test52 for 3 but 1 steps
