"""
    asin_rev

Reverse McCormick operator for `asin`.
"""
function asin_rev(y::MC, x::MC)  # y = asin(x)
    h = lo(half_pi(Float64))
    y = y ∩ IntervalType(-h, h)
    if ~isempty(y)
        x = sin(y)
    end
    y,x
end

"""
    acos_rev

Reverse McCormick operator for `acos`.
"""
function acos_rev(y::MC, x::MC)
    y = y ∩ IntervalType(0.0, hi(half_pi(Float64)))
    if ~isempty(y)
        x = x ∩ cos(y)
    end
    y,x
end

"""
    atan_rev

Reverse McCormick operator for `atan`.
"""
function atan_rev(y::MC, x::MC)
    y = y ∩ IntervalType(-lo(half_pi(Float64)), hi(half_pi(Float64)))
    if ~isempty(y)
        x = x ∩ tan(y)
    end
    y,x
end