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
pred inv5[] {
(all i: (one Influencer) {
(one u: (one User) {
((u in (follows.i)) && (u !in (suggested.u)) && (i !in (suggested.i)))
})
})
}





