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
(all s: (one User),u: (one (User - s)) {
(some v: (one User) {
((u in (posts.s)) <=> ((u !in (follows.s)) && (u in (follows.v)) && (v in (follows.s))))
})
})
}





