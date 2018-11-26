module ExamplePackage

greet() = print("Hello World!")

using Expectations, Distributions

function foo(μ = 1., σ = 2.)
    d = Normal(μ, σ)
    E = expectation(d)
    return E(x -> sin(x))
end

export foo

end # module
