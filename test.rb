class PhuongTrinhBacHai

	attr_reader :a, :b, :c
	attr_accessor :kq

	def initialize(a,b,c)
		@a = a
		@b = b
		@c = c
	end

	private

	def tinh_delta
		if a != 0 
			delta = b*b - 4*a*c
			return delta
		end
			delta = nil
	end

	public 

	def giai_pt
		delta = send :tinh_delta
		if delta == nil 
			return @kq = "ko phai pt bac 2"
		end
		
		if delta > 0  
			@x1 = (-b + Math.sqrt(delta))/(a*2)
			@x2 = (-b - Math.sqrt(delta))/(a*2)
			@kq = "x1: #{@x1} - x2: #{@x2}"
			return kq
		end
		if delta == 0 
			@x = -b/(a*2)
			@kq = "PT nghiệm kép x1 = x2 = : #{@x}"
			return kq
		end
			@kq = "pt vo nghiem"
	end

	def ket_luan
		if kq == nil
			puts "can giai_pt"
			return
		end
		puts "#{@kq}"
	end
end

puts "nhap 3 so a, b, c:"
a = gets()
a = a.to_i
b = gets()
b = b.to_i
c = gets()
c = c.to_i
run = PhuongTrinhBacHai.new(a,b,c)
run.giai_pt
run.ket_luan

