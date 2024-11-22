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

pred inv3{
all c:Component,p:Product |some r:Robot,pos1,pos2:Position| c->p in parts and p->pos1 in position and r->pos2 in position implies pos1=pos2
}