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
}) && ((((User)) in (follows.((User)))) => (((User)) !in (suggested.((User))))) && (all u: (one User) {
(u !in (suggested.u))
}))
}





