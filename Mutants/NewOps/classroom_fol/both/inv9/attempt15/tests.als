
pred test1 {
some disj Person0, Person1: Person {some disj Group1, Group2, Group0: Group {some disj Class0, Class1, Class2: Class {
Person = Person0 + Person1
Tutors = Person0->Person1 + Person1->Person1
Teaches = Person0->Class0 + Person0->Class1 + Person0->Class2
Group = Group0 + Group1 + Group2
Class = Class0 + Class1 + Class2
Groups = Class0->Person0->Group0 + Class0->Person0->Group1 + Class0->Person0->Group2 + Class1->Person0->Group0 + Class1->Person0->Group1 + Class1->Person0->Group2 + Class2->Person0->Group0 + Class2->Person0->Group1 + Class2->Person0->Group2
Teacher = Person1
Student = Person1
inv9[]
}}}
}
run test1 for 3 but 1 steps
pred test2 {
some disj Person0, Person1: Person {some disj Group1, Group2, Group0: Group {some disj Class0, Class1, Class2: Class {
Person = Person0 + Person1
Tutors = Person0->Person1 + Person1->Person1
Teaches = Person0->Class1 + Person0->Class2 + Person1->Class0
Group = Group0 + Group1 + Group2
Class = Class0 + Class1 + Class2
Groups = Class0->Person0->Group0 + Class0->Person0->Group1 + Class0->Person0->Group2 + Class1->Person0->Group0 + Class1->Person0->Group1 + Class1->Person0->Group2 + Class2->Person0->Group0 + Class2->Person0->Group1 + Class2->Person0->Group2
Teacher = Person0
Student = Person1
inv9[]
}}}
}
run test2 for 3 but 1 steps
pred test3 {
some disj Person0, Person1: Person {some disj Group1, Group2, Group0: Group {some disj Class0, Class1, Class2: Class {
Person = Person0 + Person1
Tutors = Person0->Person1 + Person1->Person1
Teaches = Person0->Class0 + Person0->Class1 + Person0->Class2
Group = Group0 + Group1 + Group2
Class = Class0 + Class1 + Class2
Groups = Class0->Person0->Group0 + Class0->Person0->Group1 + Class0->Person0->Group2 + Class1->Person0->Group0 + Class1->Person0->Group1 + Class1->Person0->Group2 + Class2->Person0->Group0 + Class2->Person0->Group1 + Class2->Person0->Group2
Teacher = Person0
Student = Person1
inv9[]
}}}
}
run test3 for 3 but 1 steps
pred test4 {
some disj Person0, Person1: Person {some disj Group1, Group2, Group0: Group {some disj Class0, Class1, Class2: Class {
Person = Person0 + Person1
Tutors = Person0->Person1 + Person1->Person1
Teaches = Person0->Class1 + Person0->Class2 + Person1->Class0
Group = Group0 + Group1 + Group2
Class = Class0 + Class1 + Class2
Groups = Class0->Person1->Group0 + Class0->Person1->Group1 + Class0->Person1->Group2 + Class1->Person0->Group0 + Class1->Person0->Group1 + Class1->Person0->Group2 + Class2->Person0->Group0 + Class2->Person0->Group1 + Class2->Person0->Group2
Teacher = Person1
Student = Person1
inv9[]
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
Groups = Class0->Person1->Group0 + Class0->Person1->Group1 + Class0->Person1->Group2 + Class1->Person0->Group0 + Class1->Person0->Group1 + Class1->Person0->Group2 + Class2->Person0->Group0 + Class2->Person0->Group1 + Class2->Person0->Group2
Teacher = Person0
Student = Person1
inv9[]
}}}
}
run test5 for 3 but 1 steps
pred test6 {
some disj Person0, Person1: Person {some disj Group1, Group2, Group0: Group {some disj Class0, Class1, Class2: Class {
Person = Person0 + Person1
Tutors = Person0->Person1 + Person1->Person1
Teaches = Person0->Class0 + Person0->Class1 + Person0->Class2
Group = Group0 + Group1 + Group2
Class = Class0 + Class1 + Class2
Groups = Class0->Person0->Group1 + Class0->Person0->Group2 + Class0->Person1->Group0 + Class1->Person0->Group0 + Class1->Person0->Group1 + Class1->Person0->Group2 + Class2->Person0->Group0 + Class2->Person0->Group1 + Class2->Person0->Group2
Teacher = Person0
Student = Person1
inv9[]
}}}
}
run test6 for 3 but 1 steps
pred test7 {
some disj Person0, Person1: Person {some disj Group1, Group2, Group0: Group {
Person = Person0 + Person1
Tutors = Person0->Person1 + Person1->Person1
no Teaches
Group = Group0 + Group1 + Group2
no Class
no Groups
no Class' --loop state
Teacher = Person1
Student = Person1
inv9[]
}}
}
run test7 for 3 but 1 steps
pred test8 {
some disj Person0, Person1: Person {some disj Group1, Group2, Group0: Group {some disj Class0, Class1, Class2: Class {
Person = Person0 + Person1
Tutors = Person0->Person1 + Person1->Person1
Teaches = Person1->Class0 + Person1->Class1 + Person1->Class2
Group = Group0 + Group1 + Group2
Class = Class0 + Class1 + Class2
Groups = Class0->Person0->Group0 + Class0->Person0->Group1 + Class0->Person0->Group2 + Class1->Person0->Group0 + Class1->Person0->Group1 + Class1->Person0->Group2 + Class2->Person0->Group0 + Class2->Person0->Group1 + Class2->Person0->Group2
no Teacher
no Teacher' --loop state
Student = Person1
inv9[]
}}}
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
Teacher = Person0 + Person1
Student = Person1
inv9[]
}}}
}
run test9 for 3 but 1 steps
