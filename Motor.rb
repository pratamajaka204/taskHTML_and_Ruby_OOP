# Class Motor
class Motor 

	# Property 
	@bandung =20 , @jakarta= 30 

	# clas variabel
	@@knalpot = "AHRS"

	# property motor
	attr_reader :no_seriMesin
	attr_writer :no_seriMesin

	attr_accessor :nama, :warna
	# ------------------------------
	

	# Constructor
	def initialize

		# property private
		@namaMotor = "Honda"
		@warna = "Merah"

		$knalpot = "AHRS"

	end

	# static method
	def self.ngaGerung
		puts "TERENG TENG TENG TENG TENG"
	end 

	# method jalan
	def jalan
		puts "Motor milik : " + @namaMotor + "."
	end

	# Method Setter
	def setName
		@name
	end

	# Method Getter
	def setName=(value)
		@name = value
		puts "Hasil Getter and Setter Manual : "+ @name
	end

	# Method Setkecepatan pake knapot
	def set_SpeedGrow
		@@knalpot
	end

	def set_SpeedGrow=(set_SpeedGrow)
		@@knalpot = set_SpeedGrow
	end

	def KaburAdaPolisi
		true
	end

	

end 


class MotorAmfibi < Motor

	def Kabur
		puts "Kabur ah dari tilang ^_^"
	end

end

class MotorCustom < MotorAmfibi

	def Kabur
		@hasil = "ikut aturan tilang aja ...^_^"
	end




	
end

# instance object yamaha 
	yamaha = Motor.new
	yamaha.jalan 

# getter and setter manual
	yamaha.setName = "Setter"
	yamaha.setName

# instance object
	honda = Motor.new
	honda.warna = "merah"

# menggunakan attr_accessor 
	honda.warna
	puts "Hasil Attr Accessor : " + honda.warna = "Biru"

# penerapan attr_reader dan atr_writer
	vespa = Motor.new()
	puts "Hasil Attr Reader dan Attr Writter -> Nomor Mesin : " + vespa.no_seriMesin = "ABC01"

# static method
	Motor.ngaGerung.to_s

# akses class MOtor dari MotorAMfibi {Inheritence}
	amfibi_master = MotorAmfibi.new
	puts "Kenalpot yang dipakai : " + amfibi_master.set_SpeedGrow.to_s

# polimorfisme
	dragBike = MotorCustom.new
	puts " {Penerapan polimorfisme} Saat ada Polisi di jalan raya  : " + dragBike.Kabur.to_s
	puts " {Penerapan polimorfisme} Saat ada Polisi di jalan raya  : " + dragBike.KaburAdaPolisi.to_s
	