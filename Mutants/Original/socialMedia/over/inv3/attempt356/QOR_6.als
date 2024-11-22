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
((lone u: (one User) {
(all l: (one (u.sees)) {
(l in (u.follows))
})
}) && (all a: (one (Photo - Ad)) {
(all ua: (one User) {
(all la: (one (ua.follows)) {
(la in (ua.sees))
})
})
}))
}





