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
pred inv7[] {
(all s,f,nf: (one univ) {
(all u: (one Photo) {
((((u.follows) in f) && ((u.follows) !in nf)) => ((f - nf) in s))
})
})
}





