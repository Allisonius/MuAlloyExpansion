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
(some pht: (one Photo) {
(((pht in Ad) && ((((User))->pht) in posts)) => (all otherPht: (one Photo) {
(((((User))->otherPht) in posts) => (otherPht in Ad))
}))
})
}





