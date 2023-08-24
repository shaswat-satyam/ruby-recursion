
def fibs(num)
    a = 0 
    b = 1
    c = 0
    result = []
    num.times do 
        a = b 
        b = c 
        result << c
        c = a + b
    end
    result
end

p fibs(8)

@result = []

def fibs_rec(num)
  result = []
  if num == 1 
    result << 0
  elsif num == 2
    result =  fibs_rec(num-1) + [1] 
  else
    result = fibs_rec(num-1) + [fibs_rec(num-1).last(2).sum]

  end
  result
end

p fibs_rec 8