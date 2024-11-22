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
((all u: (one User) {
((((u.follows).posts) & (Photo - Ad)) in (u.sees))
}) && (all u: (one User) {
((u.sees) in Ad)
}) && (all u: (one User) {
((u.sees) in (u.sees))
}))
}





