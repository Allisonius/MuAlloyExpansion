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
pred inv4[] {
(all u: (one Day) {
(some pht: (one Photo) {
(((pht in Ad) && ((u->pht) in posts)) => (all otherPht: (one Photo) {
(((u->otherPht) in posts) => (otherPht in Ad))
}))
})
})
}





