open util/ordering[Position]

sig Position {}

sig Product {}

sig Component extends Product {
    parts : set Product,
    position : one Position
}
sig Resource extends Product {}

sig Robot {
        position : one Position
}

pred inv4{
all c:Component | all p:Product | p in c.parts => c.position in nexts[p.position] && p.position in prevs[c.position]
}