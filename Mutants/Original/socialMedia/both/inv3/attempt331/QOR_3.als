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
(lone x: (one User) {
(some p: (one Photo) {
(((p !in Ad) && (p in (x.sees))) <=> (p in ((x.follows).posts)))
})
})
}





