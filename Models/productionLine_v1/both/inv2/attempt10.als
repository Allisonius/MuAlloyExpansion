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

pred inv2{
all c:Component | c.parts in (univ-c)
    all c1,c2:Component | c2 in c1.parts => c2.parts in (univ - c1.parts)
}