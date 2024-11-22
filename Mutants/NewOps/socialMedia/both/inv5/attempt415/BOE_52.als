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
((all i: (one Influencer),u: (one User) {
(u in (follows.i))
}) && (all u1,u2: (one User) {
(((follows.u2) in u1) => (u1 !in (suggested.u2)))
}) && (all u3: (one User) {
(u3 !in (suggested.u3))
}))
}





