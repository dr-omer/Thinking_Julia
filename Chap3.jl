### A Pluto.jl notebook ###
# v0.18.1

using Markdown
using InteractiveUtils

# ╔═╡ 16ce7e93-b19e-476f-bfea-1edfdceea2dd
using PlutoUI # so that I can print in pluto rather than on terminal

# ╔═╡ ce90f63a-9eb0-11ec-34e9-915662624f3e
md"""
# Functions
This chapter is on functions.
"""

# ╔═╡ 473bd670-7f80-4f81-9170-ac6758947808
with_terminal() do # prints in Pluto
	for i ∈ 1:5
		println("Hello World $i")
	end
end

# ╔═╡ 4292b0a0-3885-4d09-be2e-04fc2daf8f08
for i ∈ 1:5 # prints in terminal
	println("Hello World $i")
end

# ╔═╡ 1d1caf9d-a77c-4c55-a014-74c730daa36a
md"""
## Type Conversion
"""

# ╔═╡ f07d96d0-0b55-425a-8b0d-cd2a10413338
parse(Int64, "73")

# ╔═╡ 4d165d74-9686-41b6-b99f-9af9921b19ed
parse(Float64,"45.56")

# ╔═╡ f3252d5c-1f48-4458-9bb0-dd52fc8ff866
parse(Int64, "Hello") # cannot covert string to int

# ╔═╡ d5e3eb1c-e57c-45b8-a1d2-27f85bd19ea3
parse(Int64, "3.2") # cannot covert float string to int

# ╔═╡ 0035d9ef-f31d-4e35-b341-be0176152e04
parse(String, 2) # Cannot covert int to string

# ╔═╡ 41edad43-c1ab-49e8-b0de-daaa668c194a
trunc(Int64,3.999) # only can take Int type first argument

# ╔═╡ 5cdac8c5-28ed-4fe4-b01a-0ff76fa85354
trunc(Float64,3.99)

# ╔═╡ 1352b6a7-e357-4012-aa85-7a6ce7733c8d
float(3) # float as function and not as type Float{16,32,64}

# ╔═╡ f9005f84-d6cc-4b52-adc1-241204cafae5
int(2.3) # cannot do this, use trunc() function

# ╔═╡ cb9eb5d0-9644-473d-bc44-7a5ba04f43db
Int64(2.3) # cannot cast, use trunc() function

# ╔═╡ d248ada5-c84f-4e81-afed-7c8ee59aa644
string(2.3)

# ╔═╡ 052d80d3-8bfc-4c1a-aa98-1e13c1b7e5b7
String(2.3) # cannot cast to String type. Use string() function.

# ╔═╡ 4fbc6fe0-a87a-4b8e-be08-16ae3f934a9e
md"""
## User defined functions
"""

# ╔═╡ 6857f960-2992-498b-80bd-7908611dd5e2
function printsomething()
	println("Hello")
	println("world")
end

# ╔═╡ 675bcb0a-0080-454e-ac98-05474d69dbb6
@with_terminal printsomething() # printing in Pluto

# ╔═╡ 1016c4b1-cdc3-4336-a63a-38e443af72e4
printsomething() # printing in terminal

# ╔═╡ 679602d2-daef-4eff-b206-db4d5da99fdf
function printsomething_arg(arg1)
	println(arg1)
	println(arg1)
end

# ╔═╡ f9a0a37c-1042-48bb-8fa8-c5a5d4351ee5
@with_terminal printsomething_arg("hello "^3) # expression is passed as argument. The experession will be resoloved first and then passed to a function

# ╔═╡ f72d9eb6-9045-4fff-9b12-9c820b8b4cac
md"""
**Functions as argument to function**
"""

# ╔═╡ 3306a520-f07e-44cc-b0f1-8f2045782d22
function dotwice(f)
	f()
	f()
end

# ╔═╡ f107d5fa-cd07-4917-9097-e62d4ed5dce8
md"""
## Excercises
"""

# ╔═╡ b6c5edf9-04e4-4dd7-9881-dc35a472c7bb
md"""
Excercise 3.2
"""

# ╔═╡ 76ce1dd6-933e-4c7f-aeef-fd2cefcf5908
function rightjustify(str)
	spaces = 70 - length(str)
	right_just_str = " "^spaces * str
	println(right_just_str)
end

# ╔═╡ c6eb0b53-d49e-4400-b74a-ad7de303dd61
@with_terminal rightjustify("monty")

# ╔═╡ 2b8e4857-6f53-4c18-baae-9a352d98705c
md"""
Excercise 3.3
"""

# ╔═╡ 34ce18fa-6a54-4836-8c1a-d87c1f3ced0e
function dotwice(f,v)
	f(v)
	f(v)
end

# ╔═╡ aafe14e4-de40-4bc7-bde7-97869cd91acf
@with_terminal dotwice(printsomething) # function as argument to function

# ╔═╡ 17993c42-fbaa-4958-99c5-e40da52ddf8d
function printsomething2(v)
	println(v)
end

# ╔═╡ 037a61a3-d71a-497b-9699-3aadf2561933
@with_terminal dotwice(printsomething2,"Hello")

# ╔═╡ 5962f458-7145-4c52-85c3-a4ce4e576b97


# ╔═╡ 00000000-0000-0000-0000-000000000001
PLUTO_PROJECT_TOML_CONTENTS = """
[deps]
PlutoUI = "7f904dfe-b85e-4ff6-b463-dae2292396a8"

[compat]
PlutoUI = "~0.7.37"
"""

# ╔═╡ 00000000-0000-0000-0000-000000000002
PLUTO_MANIFEST_TOML_CONTENTS = """
# This file is machine-generated - editing it directly is not advised

julia_version = "1.7.2"
manifest_format = "2.0"

[[deps.AbstractPlutoDingetjes]]
deps = ["Pkg"]
git-tree-sha1 = "8eaf9f1b4921132a4cff3f36a1d9ba923b14a481"
uuid = "6e696c72-6542-2067-7265-42206c756150"
version = "1.1.4"

[[deps.ArgTools]]
uuid = "0dad84c5-d112-42e6-8d28-ef12dabb789f"

[[deps.Artifacts]]
uuid = "56f22d72-fd6d-98f1-02f0-08ddc0907c33"

[[deps.Base64]]
uuid = "2a0f44e3-6c83-55bd-87e4-b1978d98bd5f"

[[deps.ColorTypes]]
deps = ["FixedPointNumbers", "Random"]
git-tree-sha1 = "024fe24d83e4a5bf5fc80501a314ce0d1aa35597"
uuid = "3da002f7-5984-5a60-b8a6-cbb66c0b333f"
version = "0.11.0"

[[deps.CompilerSupportLibraries_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "e66e0078-7015-5450-92f7-15fbd957f2ae"

[[deps.Dates]]
deps = ["Printf"]
uuid = "ade2ca70-3891-5945-98fb-dc099432e06a"

[[deps.Downloads]]
deps = ["ArgTools", "LibCURL", "NetworkOptions"]
uuid = "f43a241f-c20a-4ad4-852c-f6b1247861c6"

[[deps.FixedPointNumbers]]
deps = ["Statistics"]
git-tree-sha1 = "335bfdceacc84c5cdf16aadc768aa5ddfc5383cc"
uuid = "53c48c17-4a7d-5ca2-90c5-79b7896eea93"
version = "0.8.4"

[[deps.Hyperscript]]
deps = ["Test"]
git-tree-sha1 = "8d511d5b81240fc8e6802386302675bdf47737b9"
uuid = "47d2ed2b-36de-50cf-bf87-49c2cf4b8b91"
version = "0.0.4"

[[deps.HypertextLiteral]]
git-tree-sha1 = "2b078b5a615c6c0396c77810d92ee8c6f470d238"
uuid = "ac1192a8-f4b3-4bfe-ba22-af5b92cd3ab2"
version = "0.9.3"

[[deps.IOCapture]]
deps = ["Logging", "Random"]
git-tree-sha1 = "f7be53659ab06ddc986428d3a9dcc95f6fa6705a"
uuid = "b5f81e59-6552-4d32-b1f0-c071b021bf89"
version = "0.2.2"

[[deps.InteractiveUtils]]
deps = ["Markdown"]
uuid = "b77e0a4c-d291-57a0-90e8-8db25a27a240"

[[deps.JSON]]
deps = ["Dates", "Mmap", "Parsers", "Unicode"]
git-tree-sha1 = "3c837543ddb02250ef42f4738347454f95079d4e"
uuid = "682c06a0-de6a-54ab-a142-c8b1cf79cde6"
version = "0.21.3"

[[deps.LibCURL]]
deps = ["LibCURL_jll", "MozillaCACerts_jll"]
uuid = "b27032c2-a3e7-50c8-80cd-2d36dbcbfd21"

[[deps.LibCURL_jll]]
deps = ["Artifacts", "LibSSH2_jll", "Libdl", "MbedTLS_jll", "Zlib_jll", "nghttp2_jll"]
uuid = "deac9b47-8bc7-5906-a0fe-35ac56dc84c0"

[[deps.LibGit2]]
deps = ["Base64", "NetworkOptions", "Printf", "SHA"]
uuid = "76f85450-5226-5b5a-8eaa-529ad045b433"

[[deps.LibSSH2_jll]]
deps = ["Artifacts", "Libdl", "MbedTLS_jll"]
uuid = "29816b5a-b9ab-546f-933c-edad1886dfa8"

[[deps.Libdl]]
uuid = "8f399da3-3557-5675-b5ff-fb832c97cbdb"

[[deps.LinearAlgebra]]
deps = ["Libdl", "libblastrampoline_jll"]
uuid = "37e2e46d-f89d-539d-b4ee-838fcccc9c8e"

[[deps.Logging]]
uuid = "56ddb016-857b-54e1-b83d-db4d58db5568"

[[deps.Markdown]]
deps = ["Base64"]
uuid = "d6f4376e-aef5-505a-96c1-9c027394607a"

[[deps.MbedTLS_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "c8ffd9c3-330d-5841-b78e-0817d7145fa1"

[[deps.Mmap]]
uuid = "a63ad114-7e13-5084-954f-fe012c677804"

[[deps.MozillaCACerts_jll]]
uuid = "14a3606d-f60d-562e-9121-12d972cd8159"

[[deps.NetworkOptions]]
uuid = "ca575930-c2e3-43a9-ace4-1e988b2c1908"

[[deps.OpenBLAS_jll]]
deps = ["Artifacts", "CompilerSupportLibraries_jll", "Libdl"]
uuid = "4536629a-c528-5b80-bd46-f80d51c5b363"

[[deps.Parsers]]
deps = ["Dates"]
git-tree-sha1 = "85b5da0fa43588c75bb1ff986493443f821c70b7"
uuid = "69de0a69-1ddd-5017-9359-2bf0b02dc9f0"
version = "2.2.3"

[[deps.Pkg]]
deps = ["Artifacts", "Dates", "Downloads", "LibGit2", "Libdl", "Logging", "Markdown", "Printf", "REPL", "Random", "SHA", "Serialization", "TOML", "Tar", "UUIDs", "p7zip_jll"]
uuid = "44cfe95a-1eb2-52ea-b672-e2afdf69b78f"

[[deps.PlutoUI]]
deps = ["AbstractPlutoDingetjes", "Base64", "ColorTypes", "Dates", "Hyperscript", "HypertextLiteral", "IOCapture", "InteractiveUtils", "JSON", "Logging", "Markdown", "Random", "Reexport", "UUIDs"]
git-tree-sha1 = "bf0a1121af131d9974241ba53f601211e9303a9e"
uuid = "7f904dfe-b85e-4ff6-b463-dae2292396a8"
version = "0.7.37"

[[deps.Printf]]
deps = ["Unicode"]
uuid = "de0858da-6303-5e67-8744-51eddeeeb8d7"

[[deps.REPL]]
deps = ["InteractiveUtils", "Markdown", "Sockets", "Unicode"]
uuid = "3fa0cd96-eef1-5676-8a61-b3b8758bbffb"

[[deps.Random]]
deps = ["SHA", "Serialization"]
uuid = "9a3f8284-a2c9-5f02-9a11-845980a1fd5c"

[[deps.Reexport]]
git-tree-sha1 = "45e428421666073eab6f2da5c9d310d99bb12f9b"
uuid = "189a3867-3050-52da-a836-e630ba90ab69"
version = "1.2.2"

[[deps.SHA]]
uuid = "ea8e919c-243c-51af-8825-aaa63cd721ce"

[[deps.Serialization]]
uuid = "9e88b42a-f829-5b0c-bbe9-9e923198166b"

[[deps.Sockets]]
uuid = "6462fe0b-24de-5631-8697-dd941f90decc"

[[deps.SparseArrays]]
deps = ["LinearAlgebra", "Random"]
uuid = "2f01184e-e22b-5df5-ae63-d93ebab69eaf"

[[deps.Statistics]]
deps = ["LinearAlgebra", "SparseArrays"]
uuid = "10745b16-79ce-11e8-11f9-7d13ad32a3b2"

[[deps.TOML]]
deps = ["Dates"]
uuid = "fa267f1f-6049-4f14-aa54-33bafae1ed76"

[[deps.Tar]]
deps = ["ArgTools", "SHA"]
uuid = "a4e569a6-e804-4fa4-b0f3-eef7a1d5b13e"

[[deps.Test]]
deps = ["InteractiveUtils", "Logging", "Random", "Serialization"]
uuid = "8dfed614-e22c-5e08-85e1-65c5234f0b40"

[[deps.UUIDs]]
deps = ["Random", "SHA"]
uuid = "cf7118a7-6976-5b1a-9a39-7adc72f591a4"

[[deps.Unicode]]
uuid = "4ec0a83e-493e-50e2-b9ac-8f72acf5a8f5"

[[deps.Zlib_jll]]
deps = ["Libdl"]
uuid = "83775a58-1f1d-513f-b197-d71354ab007a"

[[deps.libblastrampoline_jll]]
deps = ["Artifacts", "Libdl", "OpenBLAS_jll"]
uuid = "8e850b90-86db-534c-a0d3-1478176c7d93"

[[deps.nghttp2_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "8e850ede-7688-5339-a07c-302acd2aaf8d"

[[deps.p7zip_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "3f19e933-33d8-53b3-aaab-bd5110c3b7a0"
"""

# ╔═╡ Cell order:
# ╟─ce90f63a-9eb0-11ec-34e9-915662624f3e
# ╠═16ce7e93-b19e-476f-bfea-1edfdceea2dd
# ╠═473bd670-7f80-4f81-9170-ac6758947808
# ╠═4292b0a0-3885-4d09-be2e-04fc2daf8f08
# ╟─1d1caf9d-a77c-4c55-a014-74c730daa36a
# ╠═f07d96d0-0b55-425a-8b0d-cd2a10413338
# ╠═4d165d74-9686-41b6-b99f-9af9921b19ed
# ╠═f3252d5c-1f48-4458-9bb0-dd52fc8ff866
# ╠═d5e3eb1c-e57c-45b8-a1d2-27f85bd19ea3
# ╠═0035d9ef-f31d-4e35-b341-be0176152e04
# ╠═41edad43-c1ab-49e8-b0de-daaa668c194a
# ╠═5cdac8c5-28ed-4fe4-b01a-0ff76fa85354
# ╠═1352b6a7-e357-4012-aa85-7a6ce7733c8d
# ╠═f9005f84-d6cc-4b52-adc1-241204cafae5
# ╠═cb9eb5d0-9644-473d-bc44-7a5ba04f43db
# ╠═d248ada5-c84f-4e81-afed-7c8ee59aa644
# ╠═052d80d3-8bfc-4c1a-aa98-1e13c1b7e5b7
# ╟─4fbc6fe0-a87a-4b8e-be08-16ae3f934a9e
# ╠═6857f960-2992-498b-80bd-7908611dd5e2
# ╠═675bcb0a-0080-454e-ac98-05474d69dbb6
# ╠═1016c4b1-cdc3-4336-a63a-38e443af72e4
# ╠═679602d2-daef-4eff-b206-db4d5da99fdf
# ╠═f9a0a37c-1042-48bb-8fa8-c5a5d4351ee5
# ╟─f72d9eb6-9045-4fff-9b12-9c820b8b4cac
# ╠═3306a520-f07e-44cc-b0f1-8f2045782d22
# ╠═aafe14e4-de40-4bc7-bde7-97869cd91acf
# ╟─f107d5fa-cd07-4917-9097-e62d4ed5dce8
# ╟─b6c5edf9-04e4-4dd7-9881-dc35a472c7bb
# ╠═76ce1dd6-933e-4c7f-aeef-fd2cefcf5908
# ╠═c6eb0b53-d49e-4400-b74a-ad7de303dd61
# ╟─2b8e4857-6f53-4c18-baae-9a352d98705c
# ╠═34ce18fa-6a54-4836-8c1a-d87c1f3ced0e
# ╠═17993c42-fbaa-4958-99c5-e40da52ddf8d
# ╠═037a61a3-d71a-497b-9699-3aadf2561933
# ╠═5962f458-7145-4c52-85c3-a4ce4e576b97
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
