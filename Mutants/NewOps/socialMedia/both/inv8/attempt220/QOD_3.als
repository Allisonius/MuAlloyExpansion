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
pred inv8[] {
(all x: (one User) {
(all p: (one Photo) {
(((p in (x.sees)) && (p in Ad)) => ((((User)) in (x.follows)) || (((User)) in (x.suggested))))
})
})
}





