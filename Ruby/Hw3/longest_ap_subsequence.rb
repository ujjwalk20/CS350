def longest_arith_seq_length(a)
    dp, n, ans = {}, a.size, -Float::INFINITY
    (1..n-1).each do |j|
      (0..j-1).each do |i|
        diff = a[j] - a[i]
        if dp.has_key?([diff, i])
          dp[[diff, j]] = dp[[diff, i]] + 1
        else
          dp[[diff, j]] = 2
        end
        ans = [ans, dp[[diff, j]]].max
      end
    end
    ans
  end
  puts longest_arith_seq_length([1, 7, 10, 13, 14, 19])
puts longest_arith_seq_length([1, 7, 10, 15, 27, 29])



