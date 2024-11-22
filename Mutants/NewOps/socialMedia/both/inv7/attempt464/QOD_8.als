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
(all y: (one User) {
(all u: (one User) {
((((User)) in (suggested.u)) => ((((User)) in (follows.y)) && (y in (follows.u))))
})
})
}





