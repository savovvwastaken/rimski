require_relative '../lib/rome_convertor.rb'

describe RomeConverter do
	it "returns roman from integer" do
		expect(RomeConverter.new.to_rome(0)).to eq ""
		expect(RomeConverter.new.to_rome(1)).to eq "I"
		expect(RomeConverter.new.to_rome(2)).to eq "II"
		expect(RomeConverter.new.to_rome(3)).to eq "III"
		expect(RomeConverter.new.to_rome(4)).to eq "IV"
		expect(RomeConverter.new.to_rome(5)).to eq "V"
		expect(RomeConverter.new.to_rome(6)).to eq "VI"
		expect(RomeConverter.new.to_rome(7)).to eq "VII"
		expect(RomeConverter.new.to_rome(8)).to eq "VIII"
		expect(RomeConverter.new.to_rome(9)).to eq "IX"
		expect(RomeConverter.new.to_rome(10)).to eq "X"
		expect(RomeConverter.new.to_rome(11)).to eq "XI"
		expect(RomeConverter.new.to_rome(12)).to eq "XII"
		expect(RomeConverter.new.to_rome(13)).to eq "XIII"
		expect(RomeConverter.new.to_rome(14)).to eq "XIV"
		expect(RomeConverter.new.to_rome(15)).to eq "XV"
		expect(RomeConverter.new.to_rome(16)).to eq "XVI"
		expect(RomeConverter.new.to_rome(20)).to eq "XX"
		expect(RomeConverter.new.to_rome(30)).to eq "XXX"
		expect(RomeConverter.new.to_rome(40)).to eq "XL"
		expect(RomeConverter.new.to_rome(50)).to eq "L"
		expect(RomeConverter.new.to_rome(60)).to eq "LX"
		expect(RomeConverter.new.to_rome(70)).to eq "LXX"
		expect(RomeConverter.new.to_rome(80)).to eq "LXXX"
		expect(RomeConverter.new.to_rome(90)).to eq "XC"
		expect(RomeConverter.new.to_rome(99)).to eq "XCIX"
		expect(RomeConverter.new.to_rome(100)).to eq "C"
		expect(RomeConverter.new.to_rome(200)).to eq "CC"
		expect(RomeConverter.new.to_rome(300)).to eq "CCC"
		expect(RomeConverter.new.to_rome(400)).to eq "CD"
		expect(RomeConverter.new.to_rome(500)).to eq "D"
		expect(RomeConverter.new.to_rome(600)).to eq "DC"
		expect(RomeConverter.new.to_rome(900)).to eq "CM"
		expect(RomeConverter.new.to_rome(1000)).to eq "M"
		expect(RomeConverter.new.to_rome(2000)).to eq "MM"
		expect(RomeConverter.new.to_rome(2003)).to eq "MMIII"
	end

	it "returns integer from roman" do
		expect(RomeConverter.new.to_dec("I")).to eq 1
		expect(RomeConverter.new.to_dec("II")).to eq 2
		expect(RomeConverter.new.to_dec("III")).to eq 3
		expect(RomeConverter.new.to_dec("IV")).to eq 4
		expect(RomeConverter.new.to_dec("V")).to eq 5
		expect(RomeConverter.new.to_dec("VI")).to eq 6
		expect(RomeConverter.new.to_dec("VII")).to eq 7
		expect(RomeConverter.new.to_dec("VIII")).to eq 8
		expect(RomeConverter.new.to_dec("IX")).to eq 9
		expect(RomeConverter.new.to_dec("X")).to eq 10
		expect(RomeConverter.new.to_dec("XI")).to eq 11
		expect(RomeConverter.new.to_dec("XII")).to eq 12
		expect(RomeConverter.new.to_dec("XIII")).to eq 13
		expect(RomeConverter.new.to_dec("XIV")).to eq 14
		expect(RomeConverter.new.to_dec("XV")).to eq 15
		expect(RomeConverter.new.to_dec("XVI")).to eq 16
		expect(RomeConverter.new.to_dec("XX")).to eq 20
		expect(RomeConverter.new.to_dec("XXX")).to eq 30
		expect(RomeConverter.new.to_dec("XL")).to eq 40
		expect(RomeConverter.new.to_dec("L")).to eq 50
		expect(RomeConverter.new.to_dec("LX")).to eq 60
		expect(RomeConverter.new.to_dec("LXX")).to eq 70
		expect(RomeConverter.new.to_dec("LXXX")).to eq 80
		expect(RomeConverter.new.to_dec("XC")).to eq 90
		expect(RomeConverter.new.to_dec("XCIX")).to eq 99
		expect(RomeConverter.new.to_dec("C")).to eq 100
		expect(RomeConverter.new.to_dec("CC")).to eq 200
		expect(RomeConverter.new.to_dec("CCC")).to eq 300
		expect(RomeConverter.new.to_dec("CD")).to eq 400
		expect(RomeConverter.new.to_dec("D")).to eq 500
		expect(RomeConverter.new.to_dec("DC")).to eq 600
		expect(RomeConverter.new.to_dec("CM")).to eq 900
		expect(RomeConverter.new.to_dec("M")).to eq 1000
		expect(RomeConverter.new.to_dec("MM")).to eq 2000
		expect(RomeConverter.new.to_dec("MMIII")).to eq 2003
	end
end
