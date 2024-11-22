module unknown
open util/integer [] as integer
sig User {
follows: (set User),
sees: (set Photo),
posts: (set Photo),
suggested: (set User)
}
sig Influencer extends User {}
sig Photo {
date: (one Day)
}
sig Ad extends Photo {}
sig Day {}
pred inv3[] {
((((Photo)) in (sees.((Photo)))) <=> ((((Photo)) in ((follows.((User))).posts)) && (((Photo)) in Ad)))
}





