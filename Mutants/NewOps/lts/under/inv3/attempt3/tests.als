
pred test1 {
some disj State1, State0: State {some disj Event2, Event0, Event1: Event {
State = State0 + State1
trans = State0->Event0->State0 + State0->Event1->State0 + State0->Event2->State0 + State0->Event2->State1 + State1->Event0->State0 + State1->Event1->State0
Event = Event0 + Event1 + Event2
Init = State1
inv3[]
}}
}
run test1 for 3 but 1 steps
pred test2 {
some disj Event0: Event {
no State
no trans
no State' --loop state
Event = Event0
no Init
no Init' --loop state
inv3[]
}
}
run test2 for 3 but 1 steps
pred test3 {
some disj State1, State0: State {some disj Event2, Event0, Event1: Event {
State = State0 + State1
trans = State0->Event0->State0 + State0->Event1->State0 + State0->Event1->State1 + State0->Event2->State0 + State0->Event2->State1 + State1->Event0->State0 + State1->Event2->State0
Event = Event0 + Event1 + Event2
Init = State1
inv3[]
}}
}
run test3 for 3 but 1 steps
pred test4 {
some disj State0: State {
State = State0
no trans
no Event
no Event' --loop state
Init = State0
inv3[]
}
}
run test4 for 3 but 1 steps
