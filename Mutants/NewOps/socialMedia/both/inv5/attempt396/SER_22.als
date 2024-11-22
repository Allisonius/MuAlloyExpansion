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
(all u: (one User) {
(all inf: (one Day) {
((u != inf) => ((inf in (u.follows)) && (u !in (inf.follows))))
})
})
}





