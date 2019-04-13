(λxyz.xz(yz))(λmn.m)(λp.p)
(λxλyλz.xz(yz))(λmλn.m)(λp.p)
(λyλz.(λmλn.m)z(yz))(λp.p)
λz.(λmλn.m)z((λp.p)z)
λz.(λn.z)((λp.p)z)
λz.(λn.z)(z)
λz.z

Ex1. b)
Ex2. c)
Ex3. b)

1.11 Exercices
Combinators
1. Yes
2. No
3. Yes
4. Yes
5. No

Normal form or divergence?
1. Normal
2. Diverge
3. Normal

Beta Reduce
1.
(λabc.cba)zz(λwv.w)
	= (λaλbλc.cba)zz(λwλv.w)
	= [a := z]
	= (λbλc.cbz)z(λwλv.w)
	= [b := z]
	= (λc.czz)(λwλv.w)
	= [c := (λwλv.w)]
	= (λwλv.w)zz
	= [w := z]
	= (λv.z)z
	= [v := z]
	= z
	

