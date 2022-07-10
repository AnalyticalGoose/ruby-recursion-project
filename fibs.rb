def fibs(n, fib = [0], x = 1)
    (n-1).times { fib << x; x = fib[-1] + fib[-2] }
    return fib
end

def fibs_rec(n)    
    return [0, 1] if n == 2 
    fib = fibs_rec(n - 1)  
    fib << (fib[-1] + fib[-2])
  end

def fibs_math(n) # Much faster at very large n values.
    return (1.618033988749895**n / 5**0.5).round
end

def fibs_inclusive(n)   
    n <= 1 ? n : fibs_inclusive(n-1) + fibs_inclusive(n-2)
end

