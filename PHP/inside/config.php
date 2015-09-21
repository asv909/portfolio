<?php
# Начало: Секция
     $xslfile = "xsl/layout.xsl"; # XSLT-шаблон применяемый по умолчанию
# Конец: Секция

##########

# Начало: Секция

# Конец: Секция

##########

# Начало: Сопоставление страниц сайта с XML-файлами
$filelist = array(
//  Служебные
     "domdocument" => "xml/main.xml",
	 "404"         => "xml/404.xml",
	 "index"       => "xml/main.xml",
// Основные страницы
	 "news"       => "xml/news.xml",
	 "main"       => "xml/main.xml",
	 "catalogue"  => "xml/catalogue.xml",
	 "info"       => "xml/info.xml",
	 "inquiry"    => "xml/inquiry.xml",
	 "contact"    => "xml/contact.xml",
	 "about"      => "xml/about.xml",
	 "map"        => "xml/map.xml",
	 "office_spb" => "xml/office_spb.xml",
	 "office_vbg" => "xml/office_vbg.xml",
	 "office_fin" => "xml/office_fin.xml",	 
// Продукция 
	"products"   => "xml/products.xml",
//	"armature"   => "xml/products/armature.xml",
		"pipes"             => "xml/products/armature/pipes.xml",
		"elbows"            => "xml/products/armature/elbows.xml",
		"reducers"          => "xml/products/armature/reducers.xml",
			"concentric_reducers"     => "xml/products/armature/reducers/concentric_reducers.xml",
			"eccentric_reducers"      => "xml/products/armature/reducers/eccentric_reducers.xml",
		"tees"              => "xml/products/armature/tees.xml",
		"flanges"           => "xml/products/armature/flanges.xml",
			"loose_flanges"           => "xml/products/armature/flanges/loose_flanges.xml",
			"welded_flanges"          => "xml/products/armature/flanges/welded_flanges.xml",
		"pipe_plugs"         => "xml/products/armature/pipe_plugs.xml",
		"pipe_supports"      => "xml/products/armature/pipe_supports.xml",
		"piping_hangers"     => "xml/products/armature/piping_hangers.xml",
//	"hydraulic"  => "xml/products/hydraulic.xml",
		"hp-hoses"           => "xml/products/hydraulic/hp-hoses.xml",
			"single-braided_hoses"    => "xml/products/hydraulic/hp-hoses/single-braided_hoses.xml",
			"double-braided_hoses"    => "xml/products/hydraulic/hp-hoses/double-braided_hoses.xml",
			"triple-braided_hoses"    => "xml/products/hydraulic/hp-hoses/triple-braided_hoses.xml",
			"spiral-braided_hoses"    => "xml/products/hydraulic/hp-hoses/spiral-braided_hoses.xml",
		"fittings"           => "xml/products/hydraulic/fittings.xml",
			"cross-braided_fittings"  => "xml/products/hydraulic/fittings/cross-braided_fittings.xml",
			"spiral-braided_fittings" => "xml/products/hydraulic/fittings/spiral-braided_fittings.xml",
			"super-hp_fittings"       => "xml/products/hydraulic/fittings/super-hp_fittings.xml",
			"assembled_fittings"      => "xml/products/hydraulic/fittings/assembled_fittings.xml",
			"press-plugs"             => "xml/products/hydraulic/fittings/press-plugs.xml",
		"din2391"            => "xml/products/hydraulic/din2391.xml",
			"ferrous-h_pipes"         => "xml/products/hydraulic/din2391/ferrous-h_pipes.xml",
			"steel-h_pipes"           => "xml/products/hydraulic/din2391/steel-h_pipes.xml",
			"stainless-h_pipes"       => "xml/products/hydraulic/din2391/stainless-h_pipes.xml",
			"galvanized-h_pipes"      => "xml/products/hydraulic/din2391/galvanized-h_pipes.xml",
		"din2353"            => "xml/products/hydraulic/din2353.xml",
		"h_quick-joints"     => "xml/products/hydraulic/h_quick-joints.xml",
		"ball_valves"        => "xml/products/hydraulic/ball_valves.xml",
		"control_valves"     => "xml/products/hydraulic/control_valves.xml",
		"pumps"              => "xml/products/hydraulic/pumps.xml",
		"h_cylinders"        => "xml/products/hydraulic/h_cylinders.xml",
//	"pneumatic"  => "xml/products/pneumatic.xml",
		"p_pipes"            => "xml/products/pneumatic/p_pipes.xml",
		"p_fittings"         => "xml/products/pneumatic/p_fittings.xml",
		"p_cylinders"        => "xml/products/pneumatic/p_cylinders.xml",
		"p_valves"           => "xml/products/pneumatic/p_valves.xml",
		"p_control-valves"   => "xml/products/pneumatic/p_control-valves.xml",
		"p_governors"        => "xml/products/pneumatic/p_governors.xml",
//	"rubber"     => "xml/products/rubber.xml",
		"drive-belts"    	 => "xml/products/rubber/drive-belts.xml",
		"conveyor-belts"     => "xml/products/rubber/conveyor-belts.xml",
		"seals"    			 => "xml/products/rubber/seals.xml",
			"for_fixed-joint"         => "xml/products/rubber/seals/for_fixed-joint.xml",
			"for_movable-joint"       => "xml/products/rubber/seals/for_movable-joint.xml",
			"seal-packings"    	      => "xml/products/rubber/seals/seal-packings.xml",
// Производители
	"abc"    => "xml/brands/abc.xml",
		"boschrexroth"   => "xml/brands/abc/boschrexroth.xml",
		"cast"           => "xml/brands/abc/cast.xml",
		"contarini"      => "xml/brands/abc/contarini.xml",
	"def"    => "xml/brands/def.xml",
		"dunlophiflex"   => "xml/brands/def/dunlophiflex.xml",
		"finnseal"       => "xml/brands/def/finnseal.xml",
	"ghi"    => "xml/brands/ghi.xml",
		"galtech"        => "xml/brands/ghi/galtech.xml",
		"hydraforce"     => "xml/brands/ghi/hydraforce.xml",
		"hymat"          => "xml/brands/ghi/hymat.xml",
		"inteva"         => "xml/brands/ghi/inteva.xml",
	"jkl"    => "xml/brands/jkl.xml",
		"legris"         => "xml/brands/jkl/legris.xml",
			"legris1"         => "xml/brands/jkl/legris/legris1.xml",
			"legris2"         => "xml/brands/jkl/legris/legris2.xml",
			"legris3"         => "xml/brands/jkl/legris/legris3.xml",
			"legris4"         => "xml/brands/jkl/legris/legris4.xml",
			"legris5"         => "xml/brands/jkl/legris/legris5.xml",
			"legris6"         => "xml/brands/jkl/legris/legris6.xml",
			"legris7"         => "xml/brands/jkl/legris/legris7.xml",
		"lvi-dahl"       => "xml/brands/jkl/lvi-dahl.xml",
	"mno"    => "xml/brands/mno.xml",
		"mshydraulic"    => "xml/brands/mno/mshydraulic.xml",
		"nordhydraulic"  => "xml/brands/mno/nordhydraulic.xml",
		"optibelt"       => "xml/brands/mno/optibelt.xml",
	"pqrs"   => "xml/brands/pqrs.xml",
		"parkerermeto"   => "xml/brands/pqrs/parkerermeto.xml",
		"rastelli"       => "xml/brands/pqrs/rastelli.xml",
		"semperit"       => "xml/brands/pqrs/semperit.xml",
		"simrit"         => "xml/brands/pqrs/simrit.xml",
	"tuv"    => "xml/brands/tuv.xml",
		"teknikum"       => "xml/brands/tuv/teknikum.xml",
		"tiivistekeskus" => "xml/brands/tuv/tiivistekeskus.xml",
		"trelleborg"     => "xml/brands/tuv/trelleborg.xml",
);
# Конец: Секция сопоставления страниц с XML-файлами контента

##########

# Начало: Секция для настройки системы кэширования
$options = array
    ( 
     'cacheDir'                => 'cache/',
     'caching'                 => true,
     'lifeTime'                => 86400, 
     'fileLocking'             => true,	 
     'writeControl'            => true,
     'readControl'             => true,
     'readControlType'         => 'crc32',
	 'pearErrorMode'           => 1,
	 'memoryCaching'           => false,
	 'onlyMemoryCaching'       => false,
	 'memoryCachingLimit'      => 100,
	 'fileNameProtection'      => false, 
     'automaticSerialization'  => false,
     'automaticCleaningFactor' => 0,
     'hashedDirectoryLevel'    => 0,
     'hashedDirectoryUmask'    => 0700,
     'errorHandlingAPIBreak'   => false
    );
# Конец: Секция для настройки системы кэширования
# Начало: Секция настройки времени жизни кэша для каждой страницы 
$cacheLifeTime = array(
//  Служебные
     "domdocument" => 1,
	 "404"         => 999999,
	 "index"       => 999999,
// Основные страницы
	 "news"      => 999999,
	 "main"      => 999999,
	 "catalogue" => 999999,
	 "info"      => 999999,
	 "inquiry"   => 1,
	 "contact"   => 999999,
	 "about"     => 999999,
	 "map"       => 999999,
// Продукция 
	"products"   => 999999,
	"armature"   => 999999,
		"pipes"              => 999999,
		"elbows"             => 999999,
		"reducers"           => 999999,
			"concentric_reducers"     => 999999,
			"eccentric_reducers"      => 999999,
		"tees"               => 999999,
		"flanges"            => 999999,
			"loose_flanges"           => 999999,
			"welded_flanges"          => 999999,
		"pipe_plugs"         => 999999,
		"pipe_supports"      => 999999,
		"piping_hangers"     => 999999,
	"hydraulic"  => 999999,
		"hp-hoses"           => 999999,
			"single-braided_hoses"    => 999999,
			"double-braided_hoses"    => 999999,
			"triple-braided_hoses"    => 999999,
			"spiral-braided_hoses"    => 999999,
		"fittings"           => 999999,
			"cross-braided_fittings"  => 999999,
			"spiral-braided_fittings" => 999999,
			"super-hp_fittings"       => 999999,
			"assembled_fittings"      => 999999,
			"press-plugs"             => 999999,
		"din2391"            => 999999,
			"ferrous-h_pipes"         => 999999,
			"steel-h_pipes"           => 999999,
			"stainless-h_pipes"       => 999999,
			"galvanized-h_pipes"      => 999999,
		"din2353"            => 999999,
		"h_quick-joints"     => 999999,
		"ball_valves"        => 999999,
		"control_valves"     => 999999,
		"pumps"              => 999999,
		"h_cylinders"        => 999999,
	"pneumatic"  => 999999,
		"p_pipes"            => 999999,
		"p_fittings"         => 999999,
		"p_cylinders"        => 999999,
		"p_valves"           => 999999,
		"p_control-valves"   => 999999,
		"p_governors"        => 999999,
	"bearings"   => 999999,
		"ball-bearings"      => 999999,
			"1r_radial-bearings"      => 999999,
			"2r_radial-bearings"      => 999999,
			"1x_thrust-bearings"      => 999999,
			"2x_thrust-bearings"      => 999999,
			"1x_angular-bearings"     => 999999,
			"2x_angular-bearings"     => 999999,
		"roller-bearings"    => 999999,
			"cylindrical-bearings"    => 999999,
			"needle-bearings"         => 999999,
			"tapered-bearings"        => 999999,
			"spherical-bearings"      => 999999,
			"thrust-bearings"         => 999999,
		"bearing_units"      => 999999,
	"welding"    => 999999,
		"w_equipment"        => 999999,
		"w_consumables"      => 999999,
	"filters"    => 999999,
		"h_filters"   		 => 999999,
		"a_filters"   		 => 999999,
		"f_filters"   		 => 999999,
		"o_filters"   		 => 999999,
	"rubber"     => 999999,
		"drive-belts" 		 => 999999,
		"conveyor-belts"     => 999999,
		"seals"    		 	 => 999999,
			"for_fixed-joint"         => 999999,
			"for_movable-joint"       => 999999,
			"seal-packings"    	      => 999999,
	"ppe"                => 999999,
// Производители
    "brands" => 999999,
	"abc"    => 999999,
		"airfil"         => 999999,
		"boschrexroth"   => 999999,
		"buhlmann"       => 999999,
		"cast"           => 999999,
		"contarini"      => 999999,
	"def"    => 999999,
		"donaldson"      => 999999,	 
		"dunlophiflex"   => 999999,
		"finnseal"       => 999999,
	"ghi"    => 999999,
		"galtech"        => 999999,
		"hydraforce"     => 999999,
		"hymat"          => 999999,
		"inteva"         => 999999,
	"jkl"    => 999999,
		"kobold"         => 999999,
		"legris"         => 999999,
			"legris1"    		  => 999999,
			"legris2"    		  => 999999,
			"legris3"    		  => 999999,
			"legris4"    		  => 999999,
			"legris5"    		  => 999999,
			"legris6"    		  => 999999,
			"legris7"    		  => 999999,
		"lvi-dahl"       => 999999,
	"mno"    => 999999,
		"mshydraulic"    => 999999,
		"nordhydraulic"  => 999999,
		"omt"            => 999999,
		"optibelt"       => 999999,
	"pqrs"   => 999999,
		"parkerermeto"   => 999999,
		"powerhose"      => 999999,
		"rastelli"       => 999999,
		"semperit"       => 999999,
		"simrit"         => 999999,
		"skf"            => 999999,
		"stahl"          => 999999,
	"tuv"    => 999999,
		"teknikum"       => 999999,
		"tiivistekeskus" => 999999,
		"trelleborg"     => 999999,
		"tyrolit"        => 999999,
	"wxyz"   => 999999
);
# Конец: Секция настройки времени жизни кэша для каждой страницы 

# Начало: Секция 
# Конец: Секция 

##########
?>