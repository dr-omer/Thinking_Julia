### A Pluto.jl notebook ###
# v0.18.1

using Markdown
using InteractiveUtils

# ╔═╡ 7b2c1956-0d94-4493-9beb-acdaf61b5be3
md"""
My re-start in Julia Programming
"""

# ╔═╡ 75c5296c-e14d-4bcf-b6d2-c5b35571d64a
md"""
## Mathematical Operations
"""

# ╔═╡ bafae6c4-9ea3-11ec-0f17-8d0962f88e57
3 / 4

# ╔═╡ 0b4dafae-8cc5-4a13-affe-88892d0184ed
2^3

# ╔═╡ 785149ae-809d-4846-acd2-d09a0b6f4f32
begin
	x = y = 1 # multiple assignments
	x,y
end

# ╔═╡ 8dbbb047-2132-460c-98ae-93cec8efe474
π # unicode support with built-in constant 

# ╔═╡ fe528b13-a489-4847-92eb-8e3334c7cf4f
md"""
Operator precedence PEMDAS = prenthesis,exponent,multiplication,division,addition,subtraction
"""

# ╔═╡ 433e9f0b-e379-4b51-9db4-de09266a4a66
md"""
## String Operations
"""

# ╔═╡ 9d691745-29c3-4460-95d7-46b0ba87794c
md"""
Concatination using * operator
"""

# ╔═╡ 4203fe6a-621d-4faa-8fa5-a5efa9ad467b
"2" * "1"

# ╔═╡ 8902dc44-70d7-4352-92fa-45d72b37895f
md"""
Repetition using ^ operator
"""

# ╔═╡ 4d802661-c94b-4426-a7b8-630e6c0eecb2
"hello "^3 # comments

# ╔═╡ 1dd84933-069c-4070-9a7d-d3fe2afcfd2e
md"""
## Excercises Chap 2
"""

# ╔═╡ 9d80e6e1-c4ce-491d-8b60-53dd440cd9bc
vol_sphere = (4/3)*π*(5^3)

# ╔═╡ 8072c366-4c14-4990-937f-b95867937d97
begin
	cover_price = 24.95
	discount = 0.40
	ship_cost_full = 3
	ship_cost_red = 0.75
	total_books = 60
	total_cost = (cover_price * total_books * discount) + (ship_cost_full) + (total_books-1)*ship_cost_red
end

# ╔═╡ 00000000-0000-0000-0000-000000000001
PLUTO_PROJECT_TOML_CONTENTS = """
[deps]
"""

# ╔═╡ 00000000-0000-0000-0000-000000000002
PLUTO_MANIFEST_TOML_CONTENTS = """
# This file is machine-generated - editing it directly is not advised

julia_version = "1.7.2"
manifest_format = "2.0"

[deps]
"""

# ╔═╡ Cell order:
# ╟─7b2c1956-0d94-4493-9beb-acdaf61b5be3
# ╠═75c5296c-e14d-4bcf-b6d2-c5b35571d64a
# ╠═bafae6c4-9ea3-11ec-0f17-8d0962f88e57
# ╠═0b4dafae-8cc5-4a13-affe-88892d0184ed
# ╠═785149ae-809d-4846-acd2-d09a0b6f4f32
# ╠═8dbbb047-2132-460c-98ae-93cec8efe474
# ╟─fe528b13-a489-4847-92eb-8e3334c7cf4f
# ╠═433e9f0b-e379-4b51-9db4-de09266a4a66
# ╟─9d691745-29c3-4460-95d7-46b0ba87794c
# ╠═4203fe6a-621d-4faa-8fa5-a5efa9ad467b
# ╟─8902dc44-70d7-4352-92fa-45d72b37895f
# ╠═4d802661-c94b-4426-a7b8-630e6c0eecb2
# ╟─1dd84933-069c-4070-9a7d-d3fe2afcfd2e
# ╠═9d80e6e1-c4ce-491d-8b60-53dd440cd9bc
# ╠═8072c366-4c14-4990-937f-b95867937d97
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
