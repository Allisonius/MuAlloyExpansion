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
((all u1,u2: (one User),p: (one Photo) {
((p in (u1.posts)) => (p !in Ad))
}) && (all p: (one Photo),a: (one Influencer),u: (one User) {
((p in (u.sees)) => (p in a))
}))
}





