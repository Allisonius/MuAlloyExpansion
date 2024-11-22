
pred test1 {
some disj State1, State0: State {some disj Event2, Event0, Event1: Event {
State = State0 + State1
trans = State0->Event1->State1 + State0->Event2->State1 + State1->Event2->State1
Event = Event0 + Event1 + Event2
Init = State1
inv4[]
}}
}
run test1 for 3 but 1 steps
pred test2 {
some disj State1, State0: State {some disj Event2, Event0, Event1: Event {
State = State0 + State1
trans = State0->Event0->State0 + State0->Event1->State0 + State0->Event1->State1 + State0->Event2->State0 + State0->Event2->State1 + State1->Event0->State0 + State1->Event2->State0
Event = Event0 + Event1 + Event2
Init = State1
inv4[]
}}
}
run test2 for 3 but 1 steps
pred test3 {
some disj State1, State0: State {some disj Event2, Event0, Event1: Event {
State = State0 + State1
trans = State0->Event0->State1 + State0->Event1->State1 + State0->Event2->State1 + State1->Event0->State1 + State1->Event1->State1 + State1->Event2->State1
Event = Event0 + Event1 + Event2
Init = State1
inv4[]
}}
}
run test3 for 3 but 1 steps
pred test4 {
some disj State1, State0: State {some disj Event2, Event0, Event1: Event {
State = State0 + State1
trans = State0->Event1->State1 + State0->Event2->State1 + State1->Event0->State1 + State1->Event2->State1
Event = Event0 + Event1 + Event2
Init = State0 + State1
inv4[]
}}
}
run test4 for 3 but 1 steps
pred test5 {
some disj State1, State0: State {some disj Event2, Event0, Event1: Event {
State = State0 + State1
trans = State0->Event1->State1 + State0->Event2->State1 + State1->Event1->State1 + State1->Event2->State1
Event = Event0 + Event1 + Event2
no Init
no Init' --loop state
inv4[]
}}
}
run test5 for 3 but 1 steps
pred test6 {
some disj State1, State0: State {some disj Event2, Event0, Event1: Event {
State = State0 + State1
trans = State0->Event1->State1 + State0->Event2->State1 + State1->Event0->State1 + State1->Event2->State1
Event = Event0 + Event1 + Event2
Init = State1
inv4[]
}}
}
run test6 for 3 but 1 steps
pred test7 {
some disj State1, State0: State {some disj Event2, Event0, Event1: Event {
State = State0 + State1
trans = State0->Event1->State1 + State0->Event2->State1 + State1->Event1->State1 + State1->Event2->State1
Event = Event0 + Event1 + Event2
Init = State0 + State1
inv4[]
}}
}
run test7 for 3 but 1 steps
pred test8 {
some disj State1, State0: State {some disj Event2, Event0, Event1: Event {
State = State0 + State1
trans = State0->Event0->State1 + State0->Event1->State1 + State0->Event2->State1 + State1->Event0->State1 + State1->Event1->State1 + State1->Event2->State0 + State1->Event2->State1
Event = Event0 + Event1 + Event2
Init = State1
inv4[]
}}
}
run test8 for 3 but 1 steps
pred test9 {
some disj State1, State0: State {some disj Event2, Event0, Event1: Event {
State = State0 + State1
trans = State0->Event1->State0 + State0->Event1->State1 + State0->Event2->State0 + State0->Event2->State1 + State1->Event0->State0 + State1->Event0->State1 + State1->Event2->State0
Event = Event0 + Event1 + Event2
Init = State1
inv4[]
}}
}
run test9 for 3 but 1 steps
pred test10 {
some disj State1, State0: State {some disj Event0, Event1: Event {
State = State0 + State1
trans = State0->Event0->State1 + State0->Event1->State1 + State1->Event0->State1 + State1->Event1->State1
Event = Event0 + Event1
Init = State1
inv4[]
}}
}
run test10 for 3 but 1 steps
