class PhuongTrinhBacHai
	attr_reader :a, :b, :c
	def initialize(a,b,c)
		@a=a
		@b=b
		@c=c
	end
	@k=-1
	private
		def tinh_delta
			@delta = b*b - 4*a*c
		end
	public
		def giai_pt
			delta = send :tinh_delta
			if @a != 0 then
				if delta > 0  then
					@k=1
					@x1 = (-b + Math.sqrt(delta))/(a*2)
					@x2 = (-b - Math.sqrt(delta))/(a*2)
				else 
					if delta == 0 then
						@k=0
						@x = -b/(a*2)
					end
				end
			else
				@k=10
			end	
		end
	public 
		def ket_qua
				if (@x1 == nil) && (@x == nil) then
					puts "ban can chay phan giai pt"
				else
					if @k==1  then
					puts "x1: #{@x1} - x2: #{@x2}"
				else 
					if @k==0 then
						puts "PT nghiệm kép x1 = x2 = : #{@x}"
					else
						if @k==-1
							puts "vo nghiem"
						else 
							if @k==10
								puts "khong phai pt bac 2"
							end
						end
					end
				end
			end
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

run.ket_qua