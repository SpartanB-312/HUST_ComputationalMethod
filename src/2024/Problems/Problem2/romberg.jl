function romberg(f, a, b, tol=1e-6, max_iter=10)
    R = zeros(max_iter, max_iter)
    h = b - a

    R[1, 1] = h * (f(a) + f(b)) / 2

    for i in 2:max_iter
        h /= 2
        sum = 0.0
        for k in 1:2^(i-2)
            sum += f(a + (2*k - 1) * h)
        end
        R[i, 1] = R[i-1, 1] / 2 + h * sum

        for j in 2:i
            R[i, j] = R[i, j-1] + (R[i, j-1] - R[i-1, j-1]) / (4^(j-1) - 1)
        end

        if abs(R[i, i] - R[i-1, i-1]) < tol
            return R[i, i]
        end
    end

    return R[max_iter, max_iter]
end