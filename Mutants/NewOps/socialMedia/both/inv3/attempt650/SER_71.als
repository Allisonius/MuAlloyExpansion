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
((all u,uu: (one User),pht: (one Photo) {
((((uu->pht) in posts) && ((u->uu) !in follows) && (pht in Ad)) => ((u->pht) !in sees))
}) && (all ad: (one User),u: (one User) {
((u->ad) in sees)
}))
}





