#!/usr/bin/ruby
#please no NUKES
#139!~~~~~

PRIMES_TO_CHECK = [488348, 38888883, 521, 921, 821, 229, 188009, 1249]

def tp(txt)
	puts '... ' + txt
end

class BasePrime
	
	#what are root/base primes ?
  ALL = [ 2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97, 101]

	def self.all
		return ALL
	end

end

class DeciperPrime

	attr_accessor :possible_prime

	def initialize(x_possible_prime) 
		self.possible_prime = x_possible_prime
		@bases = BasePrime.all
	end

	def deciper
	  # divide the possible with bases in order!
		# if any result is integer? then it is not prime because it is divisible by another integer other than one
		# if number is not 0 then number is ?high probability prime? after bases are exhausted
		for base in @bases 
		  result = self.possible_prime % base
			if result == 0
				tp self.possible_prime.to_s + ' is divisble by ' + base.to_s 
				return false
			end
		end
		return true
	end
end

for prime in PRIMES_TO_CHECK
	bases = BasePrime.all
	dp = DeciperPrime.new(prime)
	tp 'checking ' + dp.possible_prime.to_s + ' as possible PRIME'
	is_prime = dp.deciper
	tp dp.possible_prime.to_s + ' is possible prime ' if is_prime
	tp dp.possible_prime.to_s + ' is NOT possible prime ' unless is_prime
end

