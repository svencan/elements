elements = {}
elements[1] = "Hydrogen"
elements[2] = "Helium"
elements[3] = "Lithium"
elements[4] = "Beryllium"
elements[5] = "Boron"
elements[6] = "Carbon"
elements[7] = "Nitrogen"
elements[8] = "Oxygen"
elements[9] = "Fluorine"
elements[10] = "Neon"
elements[11] = "Sodium"
elements[12] = "Magnesium"
elements[13] = "Aluminum"
elements[14] = "Silicon"
elements[15] = "Phosphorus"
elements[16] = "Sulfur"
elements[17] = "Chlorine"
elements[18] = "Argon"
elements[19] = "Potassium"
elements[20] = "Calcium"
elements[21] = "Scandium"
elements[22] = "Titanium"
elements[23] = "Vanadium"
elements[24] = "Chromium"
elements[25] = "Manganese"
elements[26] = "Iron"
elements[27] = "Cobalt"
elements[28] = "Nickel"
elements[29] = "Copper"
elements[30] = "Zinc"
elements[31] = "Gallium"
elements[32] = "Germanium"
elements[33] = "Arsenic"
elements[34] = "Selenium"
elements[35] = "Bromine"
elements[36] = "Krypton"
elements[37] = "Rubidium"
elements[38] = "Strontium"
elements[39] = "Yttrium"
elements[40] = "Zirconium"
elements[41] = "Niobium"
elements[42] = "Molybdenum"
elements[43] = "Technetium"
elements[44] = "Ruthenium"
elements[45] = "Rhodium"
elements[46] = "Palladium"
elements[47] = "Silver"
elements[48] = "Cadmium"
elements[49] = "Indium"
elements[50] = "Tin"
elements[51] = "Antimony"
elements[52] = "Tellurium"
elements[53] = "Iodine"
elements[54] = "Xenon"
elements[55] = "Cesium"
elements[56] = "Barium"
elements[57] = "Lanthanum"
elements[58] = "Cerium"
elements[59] = "Praseodymium"
elements[60] = "Neodymium"
elements[61] = "Promethium"
elements[62] = "Samarium"
elements[63] = "Europium"
elements[64] = "Gadolinium"
elements[65] = "Terbium"
elements[66] = "Dysprosium"
elements[67] = "Holmium"
elements[68] = "Erbium"
elements[69] = "Thulium"
elements[70] = "Ytterbium"
elements[71] = "Lutetium"
elements[72] = "Hafnium"
elements[73] = "Tantalum"
elements[74] = "Wolfram"
elements[75] = "Rhenium"
elements[76] = "Osmium"
elements[77] = "Iridium"
elements[78] = "Platinum"
elements[79] = "Gold"
elements[80] = "Mercury"
elements[81] = "Thallium"
elements[82] = "Lead"
elements[83] = "Bismuth"
elements[84] = "Polonium"
elements[85] = "Astatine"
elements[86] = "Radon"
elements[87] = "Francium"
elements[88] = "Radium"
elements[89] = "Actinium"
elements[90] = "Thorium"
elements[91] = "Protactinium"
elements[92] = "Uranium"
elements[93] = "Neptunium"
elements[94] = "Plutonium"
elements[95] = "Americium"
elements[96] = "Curium"
elements[97] = "Berkelium"
elements[98] = "Californium"
elements[99] = "Einsteinium"
elements[100] = "Fermium"
elements[101] = "Mendelevium"
elements[102] = "Nobelium"
elements[103] = "Lawrencium"
elements[104] = "Rutherfordium"
elements[105] = "Dubnium"
elements[106] = "Seaborgium"
elements[107] = "Bohrium"
elements[108] = "Hassium"
elements[109] = "Meitnerium"
elements[110] = "Darmstadtium"
elements[111] = "Roentgenium"
elements[112] = "Copernicium"
elements[113] = "Nihonium"
elements[114] = "Flerovium"
elements[115] = "Moscovium"
elements[116] = "Livermorium"
elements[117] = "Tennessine"
elements[118] = "Oganesson"

-- Converts a byte to a string of 0s and 1s.
-- https://love2d.org/forums/viewtopic.php?t=84988&start=10
function byte2bin(n)
	local t, d = {}, 0
	d = math.log(n)/math.log(2) -- binary logarithm
	if n<0 then
		-- two's complement
		d = d + 1
		n = 2^d - math.abs(n)
	end
	for i=math.floor(d+1),0,-1 do
		n = n % 2^i
	end
	return table.concat(t)
end
